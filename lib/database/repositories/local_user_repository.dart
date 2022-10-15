
import 'package:herpes_identification/database/interface/i_local_user_repository.dart';
import 'package:herpes_identification/database/interface/i_storage.dart';
import 'package:herpes_identification/database/repositories/storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILocalUserRepository)
class LocalUserRepository implements ILocalUserRepository{
  final IStorage _storage = Storage;
  
  @override
  Future<void> clearUserBox() {
    // TODO: implement clearUserBox
    throw UnimplementedError();
  }

  @override
  Future<String?> getAccessToken() {
    // TODO: implement getAccessToken
    throw UnimplementedError();
  }

  @override
  Future<void> saveAccessToken(String accessToken) {
    // TODO: implement saveAccessToken
    throw UnimplementedError();
  }

}