import 'dart:io';

Future<HttpServer> server(
  dynamic host,
  int port,
) async {
  var server = HttpServer.bind(host, port);
  return server;
}
