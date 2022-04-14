import 'dart:convert';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:herpes_identification/data/api_accessor_news.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/data/model/news/article/article_model.dart';
import 'package:herpes_identification/data/model/news/responseCollection/news_response_collection.dart';
import 'package:herpes_identification/data/model/responseError/response_error.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

abstract class ArticleRequest {
  Future<Either<ResponseError, IList<ArticleModel>>> getAllNews(
      BuildContext context);
}

@LazySingleton(as: ArticleRequest)
class ArticleRequestBase implements ArticleRequest {
  @override
  Future<Either<ResponseError, IList<ArticleModel>>> getAllNews(
      BuildContext context) async {
    final response = await Provider.of<ApiAccessorNews>(context, listen: false)
        .getCategory("health");
    try {
      if (response.isSuccessful) {
        // ignore: avoid_print
        print(response.body);
        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);
        NewsResponseCollection newsResponseCollection = NewsResponseCollection.fromJson(responseDecode);
        if(newsResponseCollection.articles.isNotEmpty){
          return right(newsResponseCollection.articles);
        }else{
          return left(const ResponseError.empty());
        }
      } else {
        return left(
          ResponseError.serverError(
            message: response.error.toString(),
          ),
        );
      }
    } catch (e) {
      return left(ResponseError.serverError(message: e.toString()));
    }
  }
}
