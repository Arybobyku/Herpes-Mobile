// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CaseDetailModel _$$_CaseDetailModelFromJson(Map<String, dynamic> json) =>
    _$_CaseDetailModel(
      weight: json['weight'] as int,
      sympthons:
          SymptomModel.fromJson(json['sympthons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CaseDetailModelToJson(_$_CaseDetailModel instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'sympthons': instance.sympthons,
    };
