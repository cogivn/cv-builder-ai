// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CVSection _$CVSectionFromJson(Map<String, dynamic> json) {
  return _CVSection.fromJson(json);
}

/// @nodoc
mixin _$CVSection {
  String get name => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  List<String> get feedback => throw _privateConstructorUsedError;
  List<String> get suggestions => throw _privateConstructorUsedError;

  /// Serializes this CVSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CVSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CVSectionCopyWith<CVSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CVSectionCopyWith<$Res> {
  factory $CVSectionCopyWith(CVSection value, $Res Function(CVSection) then) =
      _$CVSectionCopyWithImpl<$Res, CVSection>;
  @useResult
  $Res call(
      {String name,
      double score,
      List<String> feedback,
      List<String> suggestions});
}

/// @nodoc
class _$CVSectionCopyWithImpl<$Res, $Val extends CVSection>
    implements $CVSectionCopyWith<$Res> {
  _$CVSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CVSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
    Object? feedback = null,
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as List<String>,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CVSectionImplCopyWith<$Res>
    implements $CVSectionCopyWith<$Res> {
  factory _$$CVSectionImplCopyWith(
          _$CVSectionImpl value, $Res Function(_$CVSectionImpl) then) =
      __$$CVSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double score,
      List<String> feedback,
      List<String> suggestions});
}

/// @nodoc
class __$$CVSectionImplCopyWithImpl<$Res>
    extends _$CVSectionCopyWithImpl<$Res, _$CVSectionImpl>
    implements _$$CVSectionImplCopyWith<$Res> {
  __$$CVSectionImplCopyWithImpl(
      _$CVSectionImpl _value, $Res Function(_$CVSectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CVSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
    Object? feedback = null,
    Object? suggestions = null,
  }) {
    return _then(_$CVSectionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      feedback: null == feedback
          ? _value._feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as List<String>,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CVSectionImpl implements _CVSection {
  const _$CVSectionImpl(
      {required this.name,
      required this.score,
      required final List<String> feedback,
      required final List<String> suggestions})
      : _feedback = feedback,
        _suggestions = suggestions;

  factory _$CVSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CVSectionImplFromJson(json);

  @override
  final String name;
  @override
  final double score;
  final List<String> _feedback;
  @override
  List<String> get feedback {
    if (_feedback is EqualUnmodifiableListView) return _feedback;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedback);
  }

  final List<String> _suggestions;
  @override
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'CVSection(name: $name, score: $score, feedback: $feedback, suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CVSectionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._feedback, _feedback) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      score,
      const DeepCollectionEquality().hash(_feedback),
      const DeepCollectionEquality().hash(_suggestions));

  /// Create a copy of CVSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CVSectionImplCopyWith<_$CVSectionImpl> get copyWith =>
      __$$CVSectionImplCopyWithImpl<_$CVSectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CVSectionImplToJson(
      this,
    );
  }
}

abstract class _CVSection implements CVSection {
  const factory _CVSection(
      {required final String name,
      required final double score,
      required final List<String> feedback,
      required final List<String> suggestions}) = _$CVSectionImpl;

  factory _CVSection.fromJson(Map<String, dynamic> json) =
      _$CVSectionImpl.fromJson;

  @override
  String get name;
  @override
  double get score;
  @override
  List<String> get feedback;
  @override
  List<String> get suggestions;

  /// Create a copy of CVSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CVSectionImplCopyWith<_$CVSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
