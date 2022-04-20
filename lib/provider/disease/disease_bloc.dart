import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herpes_identification/data/model/disease/disease_model.dart';
import 'package:herpes_identification/data/model/responseError/response_error.dart';
import 'package:herpes_identification/request/disease/disease_request.dart';
import 'package:injectable/injectable.dart';

part 'disease_event.dart';
part 'disease_state.dart';
part 'disease_bloc.freezed.dart';

@injectable
class DiseaseBloc extends Bloc<DiseaseEvent, DiseaseState> {
  final DiseaseRequest _diseaseRequest;
  DiseaseBloc(this._diseaseRequest) : super(DiseaseState.initial()) {
    on<DiseaseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
