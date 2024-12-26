// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CVScore {
  double get value => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;

  /// Create a copy of CVScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CVScoreCopyWith<CVScore> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CVScoreCopyWith<$Res> {
  factory $CVScoreCopyWith(CVScore value, $Res Function(CVScore) then) =
      _$CVScoreCopyWithImpl<$Res, CVScore>;
  @useResult
  $Res call({double value, String category, String? feedback});
}

/// @nodoc
class _$CVScoreCopyWithImpl<$Res, $Val extends CVScore>
    implements $CVScoreCopyWith<$Res> {
  _$CVScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CVScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? category = null,
    Object? feedback = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CVScoreImplCopyWith<$Res> implements $CVScoreCopyWith<$Res> {
  factory _$$CVScoreImplCopyWith(
          _$CVScoreImpl value, $Res Function(_$CVScoreImpl) then) =
      __$$CVScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String category, String? feedback});
}

/// @nodoc
class __$$CVScoreImplCopyWithImpl<$Res>
    extends _$CVScoreCopyWithImpl<$Res, _$CVScoreImpl>
    implements _$$CVScoreImplCopyWith<$Res> {
  __$$CVScoreImplCopyWithImpl(
      _$CVScoreImpl _value, $Res Function(_$CVScoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of CVScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? category = null,
    Object? feedback = freezed,
  }) {
    return _then(_$CVScoreImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CVScoreImpl extends _CVScore {
  const _$CVScoreImpl(
      {required this.value, required this.category, this.feedback})
      : super._();

  @override
  final double value;
  @override
  final String category;
  @override
  final String? feedback;

  @override
  String toString() {
    return 'CVScore(value: $value, category: $category, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CVScoreImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, category, feedback);

  /// Create a copy of CVScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CVScoreImplCopyWith<_$CVScoreImpl> get copyWith =>
      __$$CVScoreImplCopyWithImpl<_$CVScoreImpl>(this, _$identity);
}

abstract class _CVScore extends CVScore {
  const factory _CVScore(
      {required final double value,
      required final String category,
      final String? feedback}) = _$CVScoreImpl;
  const _CVScore._() : super._();

  @override
  double get value;
  @override
  String get category;
  @override
  String? get feedback;

  /// Create a copy of CVScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CVScoreImplCopyWith<_$CVScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
