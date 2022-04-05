import 'dart:io' as io;

void main(List<String> arguments) async {
  try {
    print('start');
    var httpServer = await io.HttpServer.bind('0.0.0.0', 80);
    print('launch server: http://${httpServer.address.address}:${httpServer.port}');
    await for (final request in httpServer) {
      request.response.write('request to ${request.requestedUri}');
      request.response.close();
    }
  } catch (e, s) {
    print('e: $e');
    print('e: $s');
  }
}
