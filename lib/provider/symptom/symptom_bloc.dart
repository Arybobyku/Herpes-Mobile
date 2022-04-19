import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herpes_identification/data/model/responseError/response_error.dart';
import 'package:herpes_identification/data/model/symptom/symptom_model.dart';
import 'package:herpes_identification/request/symtpom/symptom_request.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'symptom_event.dart';

part 'symptom_state.dart';

part 'symptom_bloc.freezed.dart';

@injectable
class SymptomBloc extends Bloc<SymptomEvent, SymptomState> {
  final SymptomRequest _symptomRequest;

  SymptomBloc(this._symptomRequest) : super(SymptomState.initial()) {
    on<SymptomEvent>(
      (event, emit) async {
        await event.map(
          watchAll: (e) async {
            emit(state.copyWith(isLoading: true));
            final failureOrSuccess =
                await _symptomRequest.getAllSymptom(e.context);
            failureOrSuccess.match(
                (l) => null, (r) => emit(state.copyWith(selectedSymptoms: r)));
            emit(state.copyWith(
                optionFailureOrSymptoms: optionOf(failureOrSuccess),
                isLoading: false));
          },
          selectedSymptom: (e) {
            var selected = state.selectedSymptoms
                .firstWhereOrNull((element) => element.id == e.symptomModel.id);
            if (selected != null) {
              bool inverse = selected.isSelect ?? false;
              selected = selected.copyWith(isSelect: !inverse);
              emit(
                state.copyWith(
                    selectedSymptoms: state.selectedSymptoms.updateById(
                        [selected], (item) => item.id == e.symptomModel.id)),
              );
            }
          },
          calculated: (e) {
            IList<SymptomModel> symptoms = <SymptomModel>[].lock;
            state.selectedSymptoms.where((element) => element.isSelect==true).flatMap((t) =>
            symptoms = symptoms.add(t));

            print("BOB CALCULATED ${symptoms.length}");
          },
        );
      },
    );
  }
}
