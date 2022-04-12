import 'dart:convert';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:herpes_identification/data/api_accessor.dart';
import 'package:herpes_identification/data/core/base_response.dart';
import 'package:herpes_identification/data/model/case/case_model.dart';
import 'package:herpes_identification/data/model/responseError/response_error.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

abstract class HomeRequest {
  Future<Either<ResponseError, IList<CaseModel>>> getListCase(
    BuildContext context,
  );
}

@LazySingleton(as: HomeRequest)
class HomeRequestBase extends HomeRequest {
  @override
  Future<Either<ResponseError, IList<CaseModel>>> getListCase(
      BuildContext context) async {
    final response =
        await Provider.of<ApiAccessor>(context, listen: false).getAllCase();
    try {
      if (response.isSuccessful) {
        // ignore: avoid_print
        print(response.body);
        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);
        final _base = BaseResponse.fromJson(
          responseDecode,
          (data) => IList<CaseModel>.fromJson(
            data,
            (val) => CaseModel.fromJson(
              val as Map<String, dynamic>,
            ),
          ),
        );
        if (_base.meta.code == 200) {
          if (_base.data.isNotEmpty) {
            return right(_base.data);
          }
          return left(const ResponseError.empty());
        }
        return left(ResponseError.serverError(message: _base.meta.message));
      } else {
        return left(
            ResponseError.serverError(message: response.error.toString()));
      }
    } catch (e) {
      return left(ResponseError.serverError(message: e.toString()));
    }
  }
}
