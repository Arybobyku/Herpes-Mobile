import 'package:herpes_identification/data/model/solution/solution_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'case_solution_model.g.dart';

@JsonSerializable(ignoreUnannotated: true, explicitToJson: true)
class CaseSolutionModel{
  @JsonKey(name: "solution") SolutionModel? solution;

  CaseSolutionModel(this.solution);

  factory CaseSolutionModel.fromJson(Map<String, dynamic> json)=>_$CaseSolutionModelFromJson(json);
  Map<String, dynamic> toJson()=>_$CaseSolutionModelToJson(this);

}