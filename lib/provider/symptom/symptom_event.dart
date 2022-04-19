part of 'symptom_bloc.dart';

@freezed
class SymptomEvent with _$SymptomEvent{
  const factory SymptomEvent.watchAll(BuildContext context)=_WatchAll;
  const factory SymptomEvent.selectedSymptom(SymptomModel symptomModel)=_selectedSymptom;
  const factory SymptomEvent.calculated()=_calculated;
}
