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
