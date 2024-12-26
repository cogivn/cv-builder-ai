// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CVFile {
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;

  /// Create a copy of CVFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CVFileCopyWith<CVFile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CVFileCopyWith<$Res> {
  factory $CVFileCopyWith(CVFile value, $Res Function(CVFile) then) =
      _$CVFileCopyWithImpl<$Res, CVFile>;
  @useResult
  $Res call({String path, String name, String type, double size});
}

/// @nodoc
class _$CVFileCopyWithImpl<$Res, $Val extends CVFile>
    implements $CVFileCopyWith<$Res> {
  _$CVFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CVFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? name = null,
    Object? type = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CVFileImplCopyWith<$Res> implements $CVFileCopyWith<$Res> {
  factory _$$CVFileImplCopyWith(
          _$CVFileImpl value, $Res Function(_$CVFileImpl) then) =
      __$$CVFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String name, String type, double size});
}

/// @nodoc
class __$$CVFileImplCopyWithImpl<$Res>
    extends _$CVFileCopyWithImpl<$Res, _$CVFileImpl>
    implements _$$CVFileImplCopyWith<$Res> {
  __$$CVFileImplCopyWithImpl(
      _$CVFileImpl _value, $Res Function(_$CVFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of CVFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? name = null,
    Object? type = null,
    Object? size = null,
  }) {
    return _then(_$CVFileImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CVFileImpl extends _CVFile {
  const _$CVFileImpl(
      {required this.path,
      required this.name,
      required this.type,
      required this.size})
      : super._();

  @override
  final String path;
  @override
  final String name;
  @override
  final String type;
  @override
  final double size;

  @override
  String toString() {
    return 'CVFile(path: $path, name: $name, type: $type, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CVFileImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, name, type, size);

  /// Create a copy of CVFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CVFileImplCopyWith<_$CVFileImpl> get copyWith =>
      __$$CVFileImplCopyWithImpl<_$CVFileImpl>(this, _$identity);
}

abstract class _CVFile extends CVFile {
  const factory _CVFile(
      {required final String path,
      required final String name,
      required final String type,
      required final double size}) = _$CVFileImpl;
  const _CVFile._() : super._();

  @override
  String get path;
  @override
  String get name;
  @override
  String get type;
  @override
  double get size;

  /// Create a copy of CVFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CVFileImplCopyWith<_$CVFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
