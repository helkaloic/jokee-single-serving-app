class BaseException implements Exception {
  final String message;

  BaseException(this.message);
}

class DatabaseException extends BaseException {
  DatabaseException(super.message);
}
