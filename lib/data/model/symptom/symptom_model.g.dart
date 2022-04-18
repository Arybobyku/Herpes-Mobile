// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SymptomModel _$$_SymptomModelFromJson(Map<String, dynamic> json) =>
    _$_SymptomModel(
      id: json['id'] as int,
      name: json['sympthon_name'] as String,
      isSelect: json['isSelect'] as bool?,
    );

Map<String, dynamic> _$$_SymptomModelToJson(_$_SymptomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sympthon_name': instance.name,
      'isSelect': instance.isSelect,
    };
