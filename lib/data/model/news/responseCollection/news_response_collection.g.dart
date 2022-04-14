// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsResponseCollection _$$_NewsResponseCollectionFromJson(
        Map<String, dynamic> json) =>
    _$_NewsResponseCollection(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      articles: IList<ArticleModel>.fromJson(json['articles'],
          (value) => ArticleModel.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_NewsResponseCollectionToJson(
        _$_NewsResponseCollection instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles.toJson(
        (value) => value,
      ),
    };
