// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiseaseModel _$$_DiseaseModelFromJson(Map<String, dynamic> json) =>
    _$_DiseaseModel(
      id: json['id'] as int,
      diseaseName: json['disease_name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_DiseaseModelToJson(_$_DiseaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disease_name': instance.diseaseName,
      'image': instance.image,
    };
