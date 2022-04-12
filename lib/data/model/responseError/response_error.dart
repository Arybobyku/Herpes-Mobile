import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_error.freezed.dart';

@freezed
class ResponseError with _$ResponseError{
  const factory ResponseError.noInternet() = _NoInternet;
  const factory ResponseError.empty() = _Empty;
  const factory ResponseError.serverError({
    String? message,
  }) = _ServerError;
}