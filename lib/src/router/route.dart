class Route {
  Route(
    this.path,
    this.method,
    this.handler,
  );

  /// path
  final String path;

  /// requestMethod
  final String method;

  ///
  final Function handler;
}
