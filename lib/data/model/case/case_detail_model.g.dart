// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaseDetailModel _$CaseDetailModelFromJson(Map<String, dynamic> json) =>
    CaseDetailModel(
      json['sympthons'] == null
          ? null
          : SymptomModel.fromJson(json['sympthons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CaseDetailModelToJson(CaseDetailModel instance) =>
    <String, dynamic>{
      'sympthons': instance.symptoms?.toJson(),
    };
