import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';

class ServerException implements Exception {}

class ServerNotReachableException extends ServerException {}

class InvalidSessionException extends ServerException {}

class InvalidLoginDetailsException extends ServerException {}

class CacheException implements Exception {}

class CacheEmptyException implements CacheException {
  final String failedSource;
  CacheEmptyException({this.failedSource});
}

class KeyNotFoundException implements CacheException {
  final String failedValue;
  final String failedSource;
  const KeyNotFoundException({this.failedValue, this.failedSource});
}
