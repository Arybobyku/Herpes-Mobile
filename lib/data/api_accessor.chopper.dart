// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_accessor.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiAccessor extends ApiAccessor {
  _$ApiAccessor([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiAccessor;

  @override
  Future<Response<dynamic>> getListCase() {
    final $url = '/api/case';
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAllCase() {
    final $url = '/api/casePivot';
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getListSymptom() {
    final $url = '/api/sympthon';
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getListDisease() {
    final $url = '/api/disease';
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getListSolution() {
    final $url = '/api/solution';
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
