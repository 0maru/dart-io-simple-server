import 'package:dart_io_simple_server/dart_io_simple_server.dart';

void main() async {
  final app = await server('0.0.0.0', 80);
  print('🚀 Application is running on: http://${app.address.host}:${app.port}');
}
