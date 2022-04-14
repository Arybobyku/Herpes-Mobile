import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herpes_identification/data/model/news/article/article_model.dart';

part 'news_response_collection.freezed.dart';
part 'news_response_collection.g.dart';

@freezed
class NewsResponseCollection with _$NewsResponseCollection{
  const factory NewsResponseCollection({
    required String status,
    required int totalResults,
    required ArticleModel articles,
})=_NewsResponseCollection;

  factory NewsResponseCollection.fromJson(Map<String, dynamic> json)=>_$NewsResponseCollectionFromJson(json);

}