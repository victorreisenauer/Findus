// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'template_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TemplateFailureTearOff {
  const _$TemplateFailureTearOff();

  TemplateNotFound templateNotFound() {
    return const TemplateNotFound();
  }
}

// ignore: unused_element
const $TemplateFailure = _$TemplateFailureTearOff();

mixin _$TemplateFailure {}

abstract class $TemplateFailureCopyWith<$Res> {
  factory $TemplateFailureCopyWith(
          TemplateFailure value, $Res Function(TemplateFailure) then) =
      _$TemplateFailureCopyWithImpl<$Res>;
}

class _$TemplateFailureCopyWithImpl<$Res>
    implements $TemplateFailureCopyWith<$Res> {
  _$TemplateFailureCopyWithImpl(this._value, this._then);

  final TemplateFailure _value;
  // ignore: unused_field
  final $Res Function(TemplateFailure) _then;
}

abstract class $TemplateNotFoundCopyWith<$Res> {
  factory $TemplateNotFoundCopyWith(
          TemplateNotFound value, $Res Function(TemplateNotFound) then) =
      _$TemplateNotFoundCopyWithImpl<$Res>;
}

class _$TemplateNotFoundCopyWithImpl<$Res>
    extends _$TemplateFailureCopyWithImpl<$Res>
    implements $TemplateNotFoundCopyWith<$Res> {
  _$TemplateNotFoundCopyWithImpl(
      TemplateNotFound _value, $Res Function(TemplateNotFound) _then)
      : super(_value, (v) => _then(v as TemplateNotFound));

  @override
  TemplateNotFound get _value => super._value as TemplateNotFound;
}

class _$TemplateNotFound implements TemplateNotFound {
  const _$TemplateNotFound();

  @override
  String toString() {
    return 'TemplateFailure.templateNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TemplateNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class TemplateNotFound implements TemplateFailure {
  const factory TemplateNotFound() = _$TemplateNotFound;
}
