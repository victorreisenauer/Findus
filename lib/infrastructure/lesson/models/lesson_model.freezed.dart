// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LessonModels _$LessonModelsFromJson(Map<String, dynamic> json) {
  return _LessonModels.fromJson(json);
}

class _$LessonModelsTearOff {
  const _$LessonModelsTearOff();

  _LessonModels call(List<LessonModel> exercises) {
    return _LessonModels(
      exercises,
    );
  }
}

// ignore: unused_element
const $LessonModels = _$LessonModelsTearOff();

mixin _$LessonModels {
  List<LessonModel> get exercises;

  Map<String, dynamic> toJson();
  $LessonModelsCopyWith<LessonModels> get copyWith;
}

abstract class $LessonModelsCopyWith<$Res> {
  factory $LessonModelsCopyWith(
          LessonModels value, $Res Function(LessonModels) then) =
      _$LessonModelsCopyWithImpl<$Res>;
  $Res call({List<LessonModel> exercises});
}

class _$LessonModelsCopyWithImpl<$Res> implements $LessonModelsCopyWith<$Res> {
  _$LessonModelsCopyWithImpl(this._value, this._then);

  final LessonModels _value;
  // ignore: unused_field
  final $Res Function(LessonModels) _then;

  @override
  $Res call({
    Object exercises = freezed,
  }) {
    return _then(_value.copyWith(
      exercises: exercises == freezed
          ? _value.exercises
          : exercises as List<LessonModel>,
    ));
  }
}

abstract class _$LessonModelsCopyWith<$Res>
    implements $LessonModelsCopyWith<$Res> {
  factory _$LessonModelsCopyWith(
          _LessonModels value, $Res Function(_LessonModels) then) =
      __$LessonModelsCopyWithImpl<$Res>;
  @override
  $Res call({List<LessonModel> exercises});
}

class __$LessonModelsCopyWithImpl<$Res> extends _$LessonModelsCopyWithImpl<$Res>
    implements _$LessonModelsCopyWith<$Res> {
  __$LessonModelsCopyWithImpl(
      _LessonModels _value, $Res Function(_LessonModels) _then)
      : super(_value, (v) => _then(v as _LessonModels));

  @override
  _LessonModels get _value => super._value as _LessonModels;

  @override
  $Res call({
    Object exercises = freezed,
  }) {
    return _then(_LessonModels(
      exercises == freezed ? _value.exercises : exercises as List<LessonModel>,
    ));
  }
}

@JsonSerializable()
class _$_LessonModels implements _LessonModels {
  _$_LessonModels(this.exercises) : assert(exercises != null);

  factory _$_LessonModels.fromJson(Map<String, dynamic> json) =>
      _$_$_LessonModelsFromJson(json);

  @override
  final List<LessonModel> exercises;

  @override
  String toString() {
    return 'LessonModels(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonModels &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercises);

  @override
  _$LessonModelsCopyWith<_LessonModels> get copyWith =>
      __$LessonModelsCopyWithImpl<_LessonModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonModelsToJson(this);
  }
}

abstract class _LessonModels implements LessonModels {
  factory _LessonModels(List<LessonModel> exercises) = _$_LessonModels;

  factory _LessonModels.fromJson(Map<String, dynamic> json) =
      _$_LessonModels.fromJson;

  @override
  List<LessonModel> get exercises;
  @override
  _$LessonModelsCopyWith<_LessonModels> get copyWith;
}

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) {
  return _LessonModel.fromJson(json);
}

class _$LessonModelTearOff {
  const _$LessonModelTearOff();

  _LessonModel call({String id, LessonModelDetails details}) {
    return _LessonModel(
      id: id,
      details: details,
    );
  }
}

// ignore: unused_element
const $LessonModel = _$LessonModelTearOff();

mixin _$LessonModel {
  String get id;
  LessonModelDetails get details;

  Map<String, dynamic> toJson();
  $LessonModelCopyWith<LessonModel> get copyWith;
}

abstract class $LessonModelCopyWith<$Res> {
  factory $LessonModelCopyWith(
          LessonModel value, $Res Function(LessonModel) then) =
      _$LessonModelCopyWithImpl<$Res>;
  $Res call({String id, LessonModelDetails details});

  $LessonModelDetailsCopyWith<$Res> get details;
}

class _$LessonModelCopyWithImpl<$Res> implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._value, this._then);

  final LessonModel _value;
  // ignore: unused_field
  final $Res Function(LessonModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object details = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      details:
          details == freezed ? _value.details : details as LessonModelDetails,
    ));
  }

  @override
  $LessonModelDetailsCopyWith<$Res> get details {
    if (_value.details == null) {
      return null;
    }
    return $LessonModelDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

abstract class _$LessonModelCopyWith<$Res>
    implements $LessonModelCopyWith<$Res> {
  factory _$LessonModelCopyWith(
          _LessonModel value, $Res Function(_LessonModel) then) =
      __$LessonModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, LessonModelDetails details});

  @override
  $LessonModelDetailsCopyWith<$Res> get details;
}

class __$LessonModelCopyWithImpl<$Res> extends _$LessonModelCopyWithImpl<$Res>
    implements _$LessonModelCopyWith<$Res> {
  __$LessonModelCopyWithImpl(
      _LessonModel _value, $Res Function(_LessonModel) _then)
      : super(_value, (v) => _then(v as _LessonModel));

  @override
  _LessonModel get _value => super._value as _LessonModel;

  @override
  $Res call({
    Object id = freezed,
    Object details = freezed,
  }) {
    return _then(_LessonModel(
      id: id == freezed ? _value.id : id as String,
      details:
          details == freezed ? _value.details : details as LessonModelDetails,
    ));
  }
}

@JsonSerializable()
class _$_LessonModel implements _LessonModel {
  _$_LessonModel({this.id, this.details});

  factory _$_LessonModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LessonModelFromJson(json);

  @override
  final String id;
  @override
  final LessonModelDetails details;

  @override
  String toString() {
    return 'LessonModel(id: $id, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(details);

  @override
  _$LessonModelCopyWith<_LessonModel> get copyWith =>
      __$LessonModelCopyWithImpl<_LessonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonModelToJson(this);
  }
}

abstract class _LessonModel implements LessonModel {
  factory _LessonModel({String id, LessonModelDetails details}) =
      _$_LessonModel;

  factory _LessonModel.fromJson(Map<String, dynamic> json) =
      _$_LessonModel.fromJson;

  @override
  String get id;
  @override
  LessonModelDetails get details;
  @override
  _$LessonModelCopyWith<_LessonModel> get copyWith;
}

LessonModelDetails _$LessonModelDetailsFromJson(Map<String, dynamic> json) {
  return _LessonModelDetails.fromJson(json);
}

class _$LessonModelDetailsTearOff {
  const _$LessonModelDetailsTearOff();

  _LessonModelDetails call(
      {String uid,
      List<String> exercises,
      bool done,
      Map<String, String> exercise_types,
      Map<String, dynamic> created}) {
    return _LessonModelDetails(
      uid: uid,
      exercises: exercises,
      done: done,
      exercise_types: exercise_types,
      created: created,
    );
  }
}

// ignore: unused_element
const $LessonModelDetails = _$LessonModelDetailsTearOff();

mixin _$LessonModelDetails {
  String get uid;
  List<String> get exercises;
  bool get done;
  Map<String, String> get exercise_types;
  Map<String, dynamic> get created;

  Map<String, dynamic> toJson();
  $LessonModelDetailsCopyWith<LessonModelDetails> get copyWith;
}

abstract class $LessonModelDetailsCopyWith<$Res> {
  factory $LessonModelDetailsCopyWith(
          LessonModelDetails value, $Res Function(LessonModelDetails) then) =
      _$LessonModelDetailsCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      List<String> exercises,
      bool done,
      Map<String, String> exercise_types,
      Map<String, dynamic> created});
}

class _$LessonModelDetailsCopyWithImpl<$Res>
    implements $LessonModelDetailsCopyWith<$Res> {
  _$LessonModelDetailsCopyWithImpl(this._value, this._then);

  final LessonModelDetails _value;
  // ignore: unused_field
  final $Res Function(LessonModelDetails) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object exercises = freezed,
    Object done = freezed,
    Object exercise_types = freezed,
    Object created = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      exercises:
          exercises == freezed ? _value.exercises : exercises as List<String>,
      done: done == freezed ? _value.done : done as bool,
      exercise_types: exercise_types == freezed
          ? _value.exercise_types
          : exercise_types as Map<String, String>,
      created:
          created == freezed ? _value.created : created as Map<String, dynamic>,
    ));
  }
}

abstract class _$LessonModelDetailsCopyWith<$Res>
    implements $LessonModelDetailsCopyWith<$Res> {
  factory _$LessonModelDetailsCopyWith(
          _LessonModelDetails value, $Res Function(_LessonModelDetails) then) =
      __$LessonModelDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      List<String> exercises,
      bool done,
      Map<String, String> exercise_types,
      Map<String, dynamic> created});
}

class __$LessonModelDetailsCopyWithImpl<$Res>
    extends _$LessonModelDetailsCopyWithImpl<$Res>
    implements _$LessonModelDetailsCopyWith<$Res> {
  __$LessonModelDetailsCopyWithImpl(
      _LessonModelDetails _value, $Res Function(_LessonModelDetails) _then)
      : super(_value, (v) => _then(v as _LessonModelDetails));

  @override
  _LessonModelDetails get _value => super._value as _LessonModelDetails;

  @override
  $Res call({
    Object uid = freezed,
    Object exercises = freezed,
    Object done = freezed,
    Object exercise_types = freezed,
    Object created = freezed,
  }) {
    return _then(_LessonModelDetails(
      uid: uid == freezed ? _value.uid : uid as String,
      exercises:
          exercises == freezed ? _value.exercises : exercises as List<String>,
      done: done == freezed ? _value.done : done as bool,
      exercise_types: exercise_types == freezed
          ? _value.exercise_types
          : exercise_types as Map<String, String>,
      created:
          created == freezed ? _value.created : created as Map<String, dynamic>,
    ));
  }
}

@JsonSerializable()
class _$_LessonModelDetails implements _LessonModelDetails {
  _$_LessonModelDetails(
      {this.uid, this.exercises, this.done, this.exercise_types, this.created});

  factory _$_LessonModelDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_LessonModelDetailsFromJson(json);

  @override
  final String uid;
  @override
  final List<String> exercises;
  @override
  final bool done;
  @override
  final Map<String, String> exercise_types;
  @override
  final Map<String, dynamic> created;

  @override
  String toString() {
    return 'LessonModelDetails(uid: $uid, exercises: $exercises, done: $done, exercise_types: $exercise_types, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonModelDetails &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)) &&
            (identical(other.exercise_types, exercise_types) ||
                const DeepCollectionEquality()
                    .equals(other.exercise_types, exercise_types)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(exercises) ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(exercise_types) ^
      const DeepCollectionEquality().hash(created);

  @override
  _$LessonModelDetailsCopyWith<_LessonModelDetails> get copyWith =>
      __$LessonModelDetailsCopyWithImpl<_LessonModelDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonModelDetailsToJson(this);
  }
}

abstract class _LessonModelDetails implements LessonModelDetails {
  factory _LessonModelDetails(
      {String uid,
      List<String> exercises,
      bool done,
      Map<String, String> exercise_types,
      Map<String, dynamic> created}) = _$_LessonModelDetails;

  factory _LessonModelDetails.fromJson(Map<String, dynamic> json) =
      _$_LessonModelDetails.fromJson;

  @override
  String get uid;
  @override
  List<String> get exercises;
  @override
  bool get done;
  @override
  Map<String, String> get exercise_types;
  @override
  Map<String, dynamic> get created;
  @override
  _$LessonModelDetailsCopyWith<_LessonModelDetails> get copyWith;
}
