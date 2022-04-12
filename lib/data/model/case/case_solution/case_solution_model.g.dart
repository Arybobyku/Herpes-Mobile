// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_solution_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaseSolutionModel _$CaseSolutionModelFromJson(Map<String, dynamic> json) =>
    CaseSolutionModel(
      json['solution'] == null
          ? null
          : SolutionModel.fromJson(json['solution'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CaseSolutionModelToJson(CaseSolutionModel instance) =>
    <String, dynamic>{
      'solution': instance.solution?.toJson(),
    };
