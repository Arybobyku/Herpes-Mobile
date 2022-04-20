import 'dart:convert';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:herpes_identification/data/api_accessor.dart';
import 'package:herpes_identification/data/core/base_response.dart';
import 'package:herpes_identification/data/model/disease/disease_model.dart';
import 'package:herpes_identification/data/model/responseError/response_error.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

abstract class DiseaseRequest {
  Future<Either<ResponseError, IList<DiseaseModel>>> watchAll(
      BuildContext context);
}

@LazySingleton(as: DiseaseRequest)
class DiseaseRequestBase implements DiseaseRequest {
  @override
  Future<Either<ResponseError, IList<DiseaseModel>>> watchAll(
      BuildContext context) async {
    final response = await Provider.of<ApiAccessor>(context).getListDisease();
    try {
      if (response.isSuccessful) {
        // ignore: avoid_print
        print(response.body);
        String responseBody = response.body.toString();
        Map<String, dynamic> responseDecode = jsonDecode(responseBody);
        final _base = BaseResponse.fromJson(
          responseDecode,
          (data) => IList<DiseaseModel>.fromJson(
            data,
            (val) => DiseaseModel.fromJson(val as Map<String, dynamic>),
          ),
        );
        if (_base.data.isNotEmpty) {
          return right(_base.data);
        } else {
          return left(const ResponseError.empty());
        }
      } else {
        return left(ResponseError.serverError(message: response.bodyString));
      }
    } catch (e) {
      return left(ResponseError.serverError(message: e.toString()));
    }
  }
}
