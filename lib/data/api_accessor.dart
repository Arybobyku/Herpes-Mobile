import 'package:chopper/chopper.dart';
import 'package:herpes_identification/helper/constants.dart';

part 'api_accessor.chopper.dart';

@ChopperApi(baseUrl: "")
abstract class ApiAccessor extends ChopperService {

  @Get(path: "/api/case", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> getListCase();

  @Get(path: "/api/sympthon", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> getListSymptom();

  @Get(path: "/api/disease", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> getListDisease();

  @Get(path: "/api/solution", headers: {
    Constants.headerContentTypeText: Constants.headerApplicationJsonValue,
    Constants.headerAcceptText: Constants.headerApplicationJsonValue
  })
  Future<Response> getListSolution();

  static ApiAccessor create() {
    final client = ChopperClient(
        baseUrl: Constants.apiBaseUrl, services: [_$ApiAccessor()]);
    return _$ApiAccessor(client);
  }
}
