abstract class ILocalUserRepository{
  Future<void> saveAccessToken(String accessToken);
  Future<String?> getAccessToken();
  Future<void> clearUserBox();
}