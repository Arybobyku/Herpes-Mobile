import 'package:json_annotation/json_annotation.dart';

part 'symptom_model.g.dart';

@JsonSerializable(nullable: true, ignoreUnannotated: true, explicitToJson: true)
class SymptomModel{
  @JsonKey(name: "id") int? id;
  @JsonKey(name: "sympthon_name") String? name;

  SymptomModel(this.id,this.name);

  factory SymptomModel.fromJson(Map<String, dynamic> json)=>_$SymptomModelFromJson(json);
  Map<String, dynamic> toJson()=>_$SymptomModelToJson(this);
}