import 'package:chopper/chopper.dart';
import 'package:herpes_identification/helper/constants.dart';

part 'api_accessor.chopper.dart';

@ChopperApi(baseUrl: "")
class ApiAccessor extends ChopperService{

  static ApiAccessor create() {
    final client = ChopperClient(
        baseUrl: Constants.apiBaseUrl,
        services: [_$ApiAccessor()]);
    return _$ApiAccessor(client);
  }

  @override
  Type get definitionType => throw UnimplementedError();
}