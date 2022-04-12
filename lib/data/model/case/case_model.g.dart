// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaseModel _$CaseModelFromJson(Map<String, dynamic> json) => CaseModel(
      json['id'] as int?,
      json['age'] as int?,
      (json['cases_pivots'] as List<dynamic>?)
          ?.map((e) => CaseDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['confidence_level'] as int?,
      json['disease'] == null
          ? null
          : DiseaseModel.fromJson(json['disease'] as Map<String, dynamic>),
      json['gender'] as String?,
      (json['solutions'] as List<dynamic>?)
          ?.map((e) => CaseSolutionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CaseModelToJson(CaseModel instance) => <String, dynamic>{
      'id': instance.id,
      'confidence_level': instance.confidenceLevel,
      'age': instance.age,
      'gender': instance.gender,
      'disease': instance.disease?.toJson(),
      'cases_pivots': instance.caseDetails?.map((e) => e.toJson()).toList(),
      'solutions': instance.caseSolutions?.map((e) => e.toJson()).toList(),
    };
