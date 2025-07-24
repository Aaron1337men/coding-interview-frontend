class BaseException implements Exception {
  final String message;
  BaseException({
    required this.message,
  });
  void call() => toString();
  @override
  String toString() {
    return message;
  }
}

class UnknownException extends BaseException {
  UnknownException({
    super.message = 'Ocurrio un error insesperado',
  });
}
