import 'package:chopper/chopper.dart';
import 'package:herpes_identification/data/constants/constants.dart';
import 'package:injectable/injectable.dart';

part 'api_accessor_news.chopper.dart';

@ChopperApi(baseUrl: "")
abstract class ApiAccessorNews extends ChopperService {
  @Get(path: "top-headlines?country=id&pageSize=16", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue,
    Constants.headerAuthorization:Constants.apiTokenNews
  })
  Future<Response> getCategory(@Query("category") String category);

  static ApiAccessorNews create() {
    final client = ChopperClient(
        baseUrl: Constants.apiNewsBaseUrl, services: [_$ApiAccessorNews()]);
    return _$ApiAccessorNews(client);
  }
}
