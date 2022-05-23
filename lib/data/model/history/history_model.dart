import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';


@freezed
class HistoryModel with _$HistoryModel {
  const factory HistoryModel({
    required CaseModel caseModel,
    required bool success,
    required double result,
    required String date,
  }) = _HistoryModel;

  factory HistoryModel.fromJson(Map<String, dynamic> json)=>_$HistoryModelFromJson(json);
}
