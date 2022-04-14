import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herpes_identification/data/model/news/article/article_model.dart';
import 'package:herpes_identification/data/model/responseError/response_error.dart';
import 'package:herpes_identification/request/article/article_request.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'article_event.dart';

part 'article_state.dart';

part 'article_bloc.freezed.dart';

@injectable
class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticleRequest _articleRequest;

  ArticleBloc(this._articleRequest) : super(ArticleState.initial()) {
    on<ArticleEvent>(
      (event, emit) async {
        await event.map(
          watch: (e) async {
            emit(state.copyWith(isLoading: true));
            final failureOrSuccess =
                await _articleRequest.getAllNews(e.context);
            emit(
              state.copyWith(
                isLoading: false,
                optionFailureOrArticle: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}
