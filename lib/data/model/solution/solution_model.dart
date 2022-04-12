import 'package:json_annotation/json_annotation.dart';

part 'solution_model.g.dart';

@JsonSerializable(nullable: true, ignoreUnannotated: true, explicitToJson: true)
class SolutionModel{
  @JsonKey(name: "id") int? id;
  @JsonKey(name: "solution_name") String? name;
  SolutionModel(this.id,this.name);
  factory SolutionModel.fromJson(Map<String, dynamic> json)=>_$SolutionModelFromJson(json);
}