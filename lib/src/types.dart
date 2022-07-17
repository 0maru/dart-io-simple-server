import 'dart:io';

typedef Handler = Future<HttpResponse> Function(HttpRequest, HttpResponse);
