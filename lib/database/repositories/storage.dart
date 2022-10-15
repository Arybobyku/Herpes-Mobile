import 'dart:typed_data';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:herpes_identification/database/interface/i_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StorageImpl<T> implements IStorage<T> {
  Box<T>? _box;
  LazyBox<T>? _lazyBox;

  late HiveInterface _hive;

  StorageImpl() {
    _hive = Hive;
  }

  ///Register [Hive] List of [TypeAdapter] and init the [Hive] flutter
  ///
  /// Tries to register [adapter] to registry. If another adapter with same
  /// typeId had been already registered an exception will thrown or the adapter
  /// will be overridden if [override] set to `true`. Please note that internal
  /// adapters are registered and maintained by hive itself. Use [internal]
  /// parameter only if you want to override exists adapter implementation.


  ///Open [Hive] box and get the data into memory
  @override
  Future<void> openBox(
      String boxName,
      ) async {
    final List<int> hiveKey = await hiveKeys;

    _box = await _hive.openBox<T>(
      boxName,
      encryptionCipher: HiveAesCipher(hiveKey),
    );
    debugPrint('====================Open Box=================');
    debugPrint('Database $boxName Open');
    debugPrint('=============================================');
  }

  ///Open [Hive] box and get data without inset it into memory
  /// !Do not open lazy box with box on same function or the performance will become bad
  @override
  Future<void> openLazyBox(String boxName) async {
    final List<int> hiveKey = await hiveKeys;

    _lazyBox = await _hive.openLazyBox<T>(
      boxName,
      encryptionCipher: HiveAesCipher(hiveKey),
    );
    debugPrint('====================Open Box=================');
    debugPrint('Database $boxName Open');
    debugPrint('=============================================');
  }

  Future close() async {
    await _box?.close();
    await _lazyBox?.close();
    return;
  }

  @override
  Future<void> putData({
    required Map<dynamic, T> data,
  }) async {
    try {
      debugPrint('====================Put Data=================');
      debugPrint('$data');
      debugPrint('=============================================');
      if (_box != null) {
        await _box!.putAll(data);
      }
      if (_lazyBox != null) {
        await _lazyBox!.putAll(data);
      }
      debugPrint('================Put Data Success=============');
    } catch (e) {
      debugPrint('================Put Data Failed==============');
      debugPrint(e.toString());
      debugPrint('=============================================');
    }
    return;
  }

  @override
  Future<void> putDanum({
    required dynamic key,
    required T value,
  }) async {
    try {
      debugPrint('====================Put Data=================');
      debugPrint('$value');
      debugPrint('=============================================');
      if (_box != null) {
        await _box!.put(key, value);
      }
      if (_lazyBox != null) {
        await _lazyBox!.put(key, value);
      }
      debugPrint('================Put Data Success=============');
    } catch (e) {
      debugPrint('================Put Data Failed==============');
      debugPrint(e.toString());
      debugPrint('=============================================');
    }
    return;
  }

  @override
  Future<void> putListData({
    required Iterable<T> dataList,
  }) async {
    try {
      debugPrint('====================Put Data=================');
      dataList.map((val) async {
        if (_box != null) {
          await _box!.add(val);
        }
        if (_lazyBox != null) {
          await _lazyBox!.add(val);
        }
      });
      debugPrint('=============================================');
    } catch (e) {
      debugPrint('================Put Data Failed==============');
      debugPrint(e.toString());
      debugPrint('=============================================');
    }

    return;
  }

  @override
  T? getData({
    required dynamic key,
  }) {
    debugPrint('====================Get Data=================');
    final T? value = _box!.get(key);
    debugPrint('$value');
    debugPrint('=============================================');
    return value;
  }

  @override
  Future<T?> getLazyData({required String key}) async {
    debugPrint('====================Get Data=================');
    final T? value = await _lazyBox!.get(key);
    debugPrint('$value');
    debugPrint('=============================================');
    return value;
  }

  @override
  IList<T>? getListData() {
    IList<T> data = <T>[].lock;
    for (int x = 0; x < _box!.length; x++) {
      final T? item = _box!.getAt(x);
      if (item != null) {
        data = data.add(item);
      }
    }

    return data;
  }

  @override
  Future<IList<T>?> getLazyListData() async {
    IList<T> data = <T>[].lock;
    for (int x = 0; x < _lazyBox!.length; x++) {
      final T? item = await _lazyBox!.getAt(x);
      if (item != null) {
        data = data.add(item);
      }
    }

    return data;
  }

  @override
  Future<void> clear() async {
    if (_box != null) {
      await _box!.clear();
    }
    if (_lazyBox != null) {
      await _lazyBox!.clear();
    }
    return;
  }

  @override
  Future<void> delete({
    required String key,
  }) async {
    if (_box != null) {
      await _box!.delete(key);
    }
    if (_lazyBox != null) {
      await _lazyBox!.delete(key);
    }

    return;
  }

  @override
  Future<void> deleteList({
    required Iterable<dynamic> key,
  }) async {
    if (_box != null) {
      await _box!.deleteAll(key);
    }
    if (_lazyBox != null) {
      await _lazyBox!.deleteAll(key);
    }

    return;
  }

  Future<List<int>> get hiveKeys async {
    const FlutterSecureStorage ss = FlutterSecureStorage();
    String? stringKey = await ss.read(key: 'boxKey');
    List<int> hiveKey;
    if (stringKey != null) {
      hiveKey = stringKey.codeUnits;
    } else {
      hiveKey = Hive.generateSecureKey();
      final Uint8List bytes = Uint8List.fromList(hiveKey);
      stringKey = String.fromCharCodes(bytes);
      await ss.write(key: 'boxKey', value: stringKey);
    }
    return hiveKey;
  }

  @override
  bool isOpen() {
    if (_box != null) {
      return _box!.isOpen;
    }
    if (_lazyBox != null) {
      return _lazyBox!.isOpen;
    }
    return false;
  }

  @override
  ValueListenable<Box<T>> listenable({
    List? keys,
  }) {
    return _box!.listenable(
      keys: keys,
    );
  }

  @override
  ValueListenable<LazyBox<T>> lazyListenable({
    List? keys,
  }) {
    return _lazyBox!.listenable(
      keys: keys,
    );
  }

  @override
  Future<void> init({List<TypeAdapter<T>>? adapters, String? subdir})async {
    await _hive.initFlutter(subdir);
    if (adapters != null) {
      for (final adapter in adapters) {
        _hive.registerAdapter(adapter);
      }
    }
  }
}

//global const to access storage
// ignore: non_constant_identifier_names
final IStorage Storage = StorageImpl();
