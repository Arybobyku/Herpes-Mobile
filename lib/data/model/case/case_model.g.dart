// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CaseModel _$$_CaseModelFromJson(Map<String, dynamic> json) => _$_CaseModel(
      id: json['id'] as int,
      confidenceLevel: json['confidence_level'] as int,
      age: json['age'] as int,
      gender: json['gender'] as String,
      disease: DiseaseModel.fromJson(json['disease'] as Map<String, dynamic>),
      caseDetails: (json['cases_pivots'] as List<dynamic>)
          .map((e) => CaseDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      caseSolutions: (json['solutions'] as List<dynamic>)
          .map((e) => CaseSolutionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CaseModelToJson(_$_CaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'confidence_level': instance.confidenceLevel,
      'age': instance.age,
      'gender': instance.gender,
      'disease': instance.disease,
      'cases_pivots': instance.caseDetails,
      'solutions': instance.caseSolutions,
    };
