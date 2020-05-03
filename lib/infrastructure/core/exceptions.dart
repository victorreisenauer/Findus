import 'package:lrs_app_v3/infrastructure/core/exceptions.dart';

class ServerException implements Exception {}

class ServerNotReachableException extends ServerException {}

class InvalidSessionException extends ServerException {}

class CacheException implements Exception {}
