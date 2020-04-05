import 'package:lrs_app_v3/domain/core/failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure<dynamic> valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}