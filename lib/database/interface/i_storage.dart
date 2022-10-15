import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class IStorage<T>{
  Future<void> openBox(
      String boxName,
      );
  Future<void> init({
    List<TypeAdapter<T>>? adapters,
    String? subdir,
  });
  Future<void> openLazyBox(
      String boxName,
      );
  bool isOpen();
  Future<void> putData({
    required Map<dynamic, T> data,
  });
  Future<void> putDanum({
    required String key,
    required T value,
  });
  Future<void> putListData({
    required Iterable<T> dataList,
  });

  T? getData({
    required String key,
  });
  IList<T>? getListData();
  Future<T?> getLazyData({
    required String key,
  });
  Future<IList<T>?> getLazyListData();
  Future<void> clear();
  Future<void> delete({
    required String key,
  });
  Future<void> deleteList({
    required Iterable<dynamic> key,
  });
  ValueListenable<Box<T>> listenable({
    List? keys,
  });
  ValueListenable<LazyBox<T>> lazyListenable({
    List? keys,
  });
}