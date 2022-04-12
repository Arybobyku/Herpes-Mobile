import 'package:json_annotation/json_annotation.dart';

part 'disease_model.g.dart';

@JsonSerializable(nullable: true, ignoreUnannotated: true, explicitToJson: true)
class DiseaseModel{
   @JsonKey(name: "id") int? id;
   @JsonKey(name: "disease_name") String? diseaseName;
   DiseaseModel(this.id,this.diseaseName);

   factory DiseaseModel.fromJson(Map<String, dynamic> json)=>_$DiseaseModelFromJson(json);

}