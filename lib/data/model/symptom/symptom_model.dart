import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'symptom_model.freezed.dart';

part 'symptom_model.g.dart';

@freezed
class SymptomModel with _$SymptomModel {
  const factory SymptomModel({
    required int id,
    @JsonKey(name: "sympthon_name") required String name,
    bool? isSelect,
  }) = _SymptomModel;

  factory SymptomModel.initial() => const SymptomModel(
        id: -1,
        name: '',
        isSelect: false,
      );

  factory SymptomModel.fromJson(Map<String, dynamic> json) =>
      _$SymptomModelFromJson(json);
}
