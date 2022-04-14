part of 'article_bloc.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState({
    required bool isLoading,
    required Option<Either<ResponseError, IList<ArticleModel>>>
        optionFailureOrArticle,
  }) = _ArticleState;

  factory ArticleState.initial() => ArticleState(
        isLoading: false,
        optionFailureOrArticle: none(),
      );
}
