import "failures.dart";

class NotAuthenticatedError extends Error {}

class UnexpectedValueError<T> extends Error {
  final ValueFailure<T> valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = "Encountered a ValueFailure at an unrecoverable point. Terminating.";
    return Error.safeToString("$explanation Failure was: $valueFailure");
  }
}
