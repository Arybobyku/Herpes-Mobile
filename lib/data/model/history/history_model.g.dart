// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryModel _$$_HistoryModelFromJson(Map<String, dynamic> json) =>
    _$_HistoryModel(
      caseModel: CaseModel.fromJson(json['caseModel'] as Map<String, dynamic>),
      success: json['success'] as bool,
      result: (json['result'] as num).toDouble(),
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_HistoryModelToJson(_$_HistoryModel instance) =>
    <String, dynamic>{
      'caseModel': instance.caseModel,
      'success': instance.success,
      'result': instance.result,
      'date': instance.date,
    };
