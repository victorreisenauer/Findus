abstract class LocalLessonDataSource {
  /// gets the cached Lesson, which was gotten the last time 
  /// the user had internet connection.
  /// 
  /// Throws CacheException if no cached data is present
  getLessonById(id);
  cacheLesson(lesson);
}