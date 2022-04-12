import 'package:herpes_identification/data/core/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(ignoreUnannotated: true, explicitToJson: true, genericArgumentFactories: true)
class BaseResponse{
  @JsonKey(name: "meta") Meta meta;
  @JsonKey(name: 'data') dynamic data;
  BaseResponse({required this.meta,required this.data});

}