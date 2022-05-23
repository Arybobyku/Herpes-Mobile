part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watch(BuildContext context) = _Watch;
  const factory HomeEvent.refresh(BuildContext context) = _Refresh;
}
