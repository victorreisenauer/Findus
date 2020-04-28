import 'package:lrs_app_v3/domain/auth/auth_barrel.dart';
import 'package:lrs_app_v3/domain/core/value_objects_barrel.dart';

User sampleUser1 = User(
    emailAddress: EmailAddress("testUser@test.com"),
    name: StringSingleLine("test user"),
    id: UniqueId());

User sampleUser2 = User(
    emailAddress: EmailAddress("malik99@test.com"),
    name: StringSingleLine("Malik"),
    id: UniqueId());

User sampleUser3 = User(
    emailAddress: EmailAddress("sofiaMüller@test.com"),
    name: StringSingleLine("Sofia Müller"),
    id: UniqueId());
