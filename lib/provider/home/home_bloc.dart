import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/data/model/responseError/response_error.dart';
import 'package:herpes_identification/request/home/home_request.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRequest _homeRequest;

  HomeBloc(this._homeRequest) : super(HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.map(
          watch: (e) async {
            emit(state.copyWith(isLoading: true,optionFailureOrCase: none()));
            final failureOrSuccess = await _homeRequest.getListCase(e.context);
            failureOrSuccess.match(
                    (l) => null, (r) => emit(state.copyWith(listCase: r)));
            emit(
              state.copyWith(
                isLoading: false,
                optionFailureOrCase: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}
