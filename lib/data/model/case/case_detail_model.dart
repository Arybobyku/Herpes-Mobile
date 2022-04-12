import 'package:herpes_identification/data/model/symptom/symptom_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'case_detail_model.g.dart';

@JsonSerializable(nullable: true, ignoreUnannotated: true, explicitToJson: true)
class CaseDetailModel{
   @JsonKey(name: "sympthons") SymptomModel? symptoms;

   CaseDetailModel(this.symptoms);

   factory CaseDetailModel.fromJson(Map<String, dynamic> json)=>_$CaseDetailModelFromJson(json);
   Map<String, dynamic> toJson()=>_$CaseDetailModelToJson(this);
}