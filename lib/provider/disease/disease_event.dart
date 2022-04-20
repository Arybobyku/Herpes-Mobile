part of 'disease_bloc.dart';

@freezed
class DiseaseEvent with _$DiseaseEvent{
  const factory DiseaseEvent.watchAll(BuildContext context)=_WatchAll;
}
