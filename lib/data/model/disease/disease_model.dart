// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'disease_model.freezed.dart';
part 'disease_model.g.dart';

@freezed
class DiseaseModel with _$DiseaseModel{
   const factory  DiseaseModel({
      @JsonKey(name: "id")  required int id,
      @JsonKey(name: "disease_name") required String diseaseName,
      @JsonKey(name: "image") required String image,
    }) = _DiseaseModel;

  factory DiseaseModel.fromJson(Map<String, dynamic> json) =>
      _$DiseaseModelFromJson(json);

}
