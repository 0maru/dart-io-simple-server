import 'package:dart_io_simple_server/dart_io_simple_server.dart';

import 'route.dart';

/// docs: https://developer.mozilla.org/ja/docs/Web/HTTP/Methods
class Router {
  Router();

  final List<Route> _routes = [];

  void add(String method, String path, Function handler) {
    _routes.add(Route(path, method, handler));
  }

  void get(String path, Function handler) => add('GET', path, handler);

  void head(String path, Function handler) => add('HEAD', path, handler);

  void post(String path, Function handler) => add('POST', path, handler);

  void put(String path, Function handler) => add('PUT', path, handler);

  void delete(String path, Function handler) => add('DELETE', path, handler);

  void connect(String path, Function handler) => add('CONNECT', path, handler);

  void options(String path, Function handler) => add('OPTIONS', path, handler);

  void trace(String path, Function handler) => add('TRACE', path, handler);

  void patch(String path, Function handler) => add('PATCH', path, handler);

  Future<HttpResponse> call(HttpRequest request) async {
    for (var route in _routes) {
      if (route.method != request.method.toUpperCase()) {
        continue;
      }

      if (route.path == request.uri.path) {
        return route.handler();
      }
    }

    throw Exception('404 Not Found.');
  }
}
