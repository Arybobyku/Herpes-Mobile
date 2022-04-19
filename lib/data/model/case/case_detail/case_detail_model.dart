import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herpes_identification/data/model/symptom/symptom_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'case_detail_model.freezed.dart';

part 'case_detail_model.g.dart';

@freezed
class CaseDetailModel with _$CaseDetailModel {
  const factory CaseDetailModel({
    @JsonKey(name: "weight") required int weight,
    @JsonKey(name: "sympthons") required SymptomModel sympthons,
  }) = _CaseDetailModel;

  factory CaseDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CaseDetailModelFromJson(json);
}
