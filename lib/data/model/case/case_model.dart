// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herpes_identification/data/model/case/case_solution/case_solution_model.dart';
import 'package:herpes_identification/data/model/disease/disease_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'case_detail/case_detail_model.dart';

part 'case_model.freezed.dart';

part 'case_model.g.dart';

@freezed
class CaseModel with _$CaseModel {
  const factory CaseModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "confidence_level") required double confidenceLevel,
    @JsonKey(name: "age") required int age,
    @JsonKey(name: "gender") required String gender,
    @JsonKey(name: "disease") required DiseaseModel disease,
    @JsonKey(name: "cases_pivots") required List<CaseDetailModel> caseDetails,
    @JsonKey(name: "solutions") required List<CaseSolutionModel> caseSolutions,
  }) = _CaseModel;

  factory CaseModel.initial() => const CaseModel(
        disease: DiseaseModel(id: -1,diseaseName: "",image: ""),
        gender: '',
        id: -1,
        age: 0,
        confidenceLevel: 0.0,
        caseSolutions: [],
        caseDetails: [],
      );

  factory CaseModel.fromJson(Map<String, dynamic> json) =>
      _$CaseModelFromJson(json);
}
