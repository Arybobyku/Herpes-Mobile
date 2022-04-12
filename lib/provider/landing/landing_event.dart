part of 'landing_bloc.dart';

@freezed
class LandingEvent with _$LandingEvent {
  const factory LandingEvent.onChange(int index) = _OnChange;
}
