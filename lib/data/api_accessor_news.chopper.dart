// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_accessor_news.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiAccessorNews extends ApiAccessorNews {
  _$ApiAccessorNews([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiAccessorNews;

  @override
  Future<Response<dynamic>> getCategory(String category) {
    final $url = 'top-headlines?country=id&pageSize=16';
    final $params = <String, dynamic>{'category': category};
    final $headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '511bb6a9893d43fbb777a45545dbfb5d',
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
