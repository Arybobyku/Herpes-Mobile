import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'landing_event.dart';

part 'landing_state.dart';

part 'landing_bloc.freezed.dart';

@injectable
class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(LandingState.initial()) {
    on<LandingEvent>((event, emit) {
      event.map(
        onChange: (e) async {
          emit(LandingState(index: e.index));
        },
      );
    });
  }
}
