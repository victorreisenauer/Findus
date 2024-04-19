import "value_objects.dart";

/// Represents an Entity. Entities reside in the application layer. They
/// handle data and Failures from the repository and
/// pass on validated ValueObjects to the application layer.
abstract class IEntity {
  UniqueId get id;
}
