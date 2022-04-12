import 'package:herpes_identification/data/model/case/case_detail_model.dart';
import 'package:herpes_identification/data/model/case/case_solution_model.dart';
import 'package:herpes_identification/data/model/disease/disease_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'case_model.g.dart';

@JsonSerializable(nullable: true, ignoreUnannotated: true, explicitToJson: true)
class CaseModel{
  @JsonKey(name: "id") int? id;
  @JsonKey(name: "confidence_level") int? confidenceLevel;
  @JsonKey(name: "age") int? age;
  @JsonKey(name: "gender") String? gender;
  @JsonKey(name: "disease") DiseaseModel? disease;
  @JsonKey(name:"cases_pivots") List<CaseDetailModel>? caseDetails;
  @JsonKey(name:"solutions") List<CaseSolutionModel>? caseSolutions;

  CaseModel(
      this.id,
      this.age,
      this.caseDetails,
      this.confidenceLevel,
      this.disease,
      this.gender,
      this.caseSolutions
      );
  factory CaseModel.fromJson(Map<String, dynamic> json)=>_$CaseModelFromJson(json);
  Map<String, dynamic> toJson()=>_$CaseModelToJson(this);
}