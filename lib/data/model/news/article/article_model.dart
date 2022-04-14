import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';
@freezed
class ArticleModel with _$ArticleModel{
    const factory ArticleModel({
      String? author,
      required String title,
      required String url,
      required String description,
      required String urlToImage,
      required String publishedAt,
})=_ArticleModel;

    factory ArticleModel.fromJson(Map<String, dynamic> json)=>_$ArticleModelFromJson(json);

}