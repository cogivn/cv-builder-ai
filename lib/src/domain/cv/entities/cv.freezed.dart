// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CV _$CVFromJson(Map<String, dynamic> json) {
  return _CV.fromJson(json);
}

/// @nodoc
mixin _$CV {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;
  double get fileSize => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;
  CVStatus get status => throw _privateConstructorUsedError;
  CVAnalysis? get analysis => throw _privateConstructorUsedError;

  /// Serializes this CV to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CV
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CVCopyWith<CV> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CVCopyWith<$Res> {
  factory $CVCopyWith(CV value, $Res Function(CV) then) =
      _$CVCopyWithImpl<$Res, CV>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String fileName,
      String fileUrl,
      String fileType,
      double fileSize,
      DateTime uploadedAt,
      CVStatus status,
      CVAnalysis? analysis});

  $CVAnalysisCopyWith<$Res>? get analysis;
}

/// @nodoc
class _$CVCopyWithImpl<$Res, $Val extends CV> implements $CVCopyWith<$Res> {
  _$CVCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CV
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? fileName = null,
    Object? fileUrl = null,
    Object? fileType = null,
    Object? fileSize = null,
    Object? uploadedAt = null,
    Object? status = null,
    Object? analysis = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as double,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CVStatus,
      analysis: freezed == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as CVAnalysis?,
    ) as $Val);
  }

  /// Create a copy of CV
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CVAnalysisCopyWith<$Res>? get analysis {
    if (_value.analysis == null) {
      return null;
    }

    return $CVAnalysisCopyWith<$Res>(_value.analysis!, (value) {
      return _then(_value.copyWith(analysis: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CVImplCopyWith<$Res> implements $CVCopyWith<$Res> {
  factory _$$CVImplCopyWith(_$CVImpl value, $Res Function(_$CVImpl) then) =
      __$$CVImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String fileName,
      String fileUrl,
      String fileType,
      double fileSize,
      DateTime uploadedAt,
      CVStatus status,
      CVAnalysis? analysis});

  @override
  $CVAnalysisCopyWith<$Res>? get analysis;
}

/// @nodoc
class __$$CVImplCopyWithImpl<$Res> extends _$CVCopyWithImpl<$Res, _$CVImpl>
    implements _$$CVImplCopyWith<$Res> {
  __$$CVImplCopyWithImpl(_$CVImpl _value, $Res Function(_$CVImpl) _then)
      : super(_value, _then);

  /// Create a copy of CV
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? fileName = null,
    Object? fileUrl = null,
    Object? fileType = null,
    Object? fileSize = null,
    Object? uploadedAt = null,
    Object? status = null,
    Object? analysis = freezed,
  }) {
    return _then(_$CVImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as double,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CVStatus,
      analysis: freezed == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as CVAnalysis?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CVImpl implements _CV {
  const _$CVImpl(
      {required this.id,
      required this.userId,
      required this.fileName,
      required this.fileUrl,
      required this.fileType,
      required this.fileSize,
      required this.uploadedAt,
      required this.status,
      this.analysis});

  factory _$CVImpl.fromJson(Map<String, dynamic> json) =>
      _$$CVImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String fileName;
  @override
  final String fileUrl;
  @override
  final String fileType;
  @override
  final double fileSize;
  @override
  final DateTime uploadedAt;
  @override
  final CVStatus status;
  @override
  final CVAnalysis? analysis;

  @override
  String toString() {
    return 'CV(id: $id, userId: $userId, fileName: $fileName, fileUrl: $fileUrl, fileType: $fileType, fileSize: $fileSize, uploadedAt: $uploadedAt, status: $status, analysis: $analysis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CVImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, fileName, fileUrl,
      fileType, fileSize, uploadedAt, status, analysis);

  /// Create a copy of CV
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CVImplCopyWith<_$CVImpl> get copyWith =>
      __$$CVImplCopyWithImpl<_$CVImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CVImplToJson(
      this,
    );
  }
}

abstract class _CV implements CV {
  const factory _CV(
      {required final String id,
      required final String userId,
      required final String fileName,
      required final String fileUrl,
      required final String fileType,
      required final double fileSize,
      required final DateTime uploadedAt,
      required final CVStatus status,
      final CVAnalysis? analysis}) = _$CVImpl;

  factory _CV.fromJson(Map<String, dynamic> json) = _$CVImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get fileName;
  @override
  String get fileUrl;
  @override
  String get fileType;
  @override
  double get fileSize;
  @override
  DateTime get uploadedAt;
  @override
  CVStatus get status;
  @override
  CVAnalysis? get analysis;

  /// Create a copy of CV
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CVImplCopyWith<_$CVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CVAnalysis _$CVAnalysisFromJson(Map<String, dynamic> json) {
  return _CVAnalysis.fromJson(json);
}

/// @nodoc
mixin _$CVAnalysis {
  double get overallScore => throw _privateConstructorUsedError;
  List<String> get strengths => throw _privateConstructorUsedError;
  List<String> get weaknesses => throw _privateConstructorUsedError;
  Map<String, double> get sectionScores => throw _privateConstructorUsedError;
  List<String> get recommendations => throw _privateConstructorUsedError;
  List<String> get missingKeywords => throw _privateConstructorUsedError;
  DateTime get analyzedAt => throw _privateConstructorUsedError;

  /// Serializes this CVAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CVAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CVAnalysisCopyWith<CVAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CVAnalysisCopyWith<$Res> {
  factory $CVAnalysisCopyWith(
          CVAnalysis value, $Res Function(CVAnalysis) then) =
      _$CVAnalysisCopyWithImpl<$Res, CVAnalysis>;
  @useResult
  $Res call(
      {double overallScore,
      List<String> strengths,
      List<String> weaknesses,
      Map<String, double> sectionScores,
      List<String> recommendations,
      List<String> missingKeywords,
      DateTime analyzedAt});
}

/// @nodoc
class _$CVAnalysisCopyWithImpl<$Res, $Val extends CVAnalysis>
    implements $CVAnalysisCopyWith<$Res> {
  _$CVAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CVAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallScore = null,
    Object? strengths = null,
    Object? weaknesses = null,
    Object? sectionScores = null,
    Object? recommendations = null,
    Object? missingKeywords = null,
    Object? analyzedAt = null,
  }) {
    return _then(_value.copyWith(
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double,
      strengths: null == strengths
          ? _value.strengths
          : strengths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weaknesses: null == weaknesses
          ? _value.weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sectionScores: null == sectionScores
          ? _value.sectionScores
          : sectionScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      missingKeywords: null == missingKeywords
          ? _value.missingKeywords
          : missingKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyzedAt: null == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CVAnalysisImplCopyWith<$Res>
    implements $CVAnalysisCopyWith<$Res> {
  factory _$$CVAnalysisImplCopyWith(
          _$CVAnalysisImpl value, $Res Function(_$CVAnalysisImpl) then) =
      __$$CVAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double overallScore,
      List<String> strengths,
      List<String> weaknesses,
      Map<String, double> sectionScores,
      List<String> recommendations,
      List<String> missingKeywords,
      DateTime analyzedAt});
}

/// @nodoc
class __$$CVAnalysisImplCopyWithImpl<$Res>
    extends _$CVAnalysisCopyWithImpl<$Res, _$CVAnalysisImpl>
    implements _$$CVAnalysisImplCopyWith<$Res> {
  __$$CVAnalysisImplCopyWithImpl(
      _$CVAnalysisImpl _value, $Res Function(_$CVAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of CVAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallScore = null,
    Object? strengths = null,
    Object? weaknesses = null,
    Object? sectionScores = null,
    Object? recommendations = null,
    Object? missingKeywords = null,
    Object? analyzedAt = null,
  }) {
    return _then(_$CVAnalysisImpl(
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double,
      strengths: null == strengths
          ? _value._strengths
          : strengths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weaknesses: null == weaknesses
          ? _value._weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sectionScores: null == sectionScores
          ? _value._sectionScores
          : sectionScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      missingKeywords: null == missingKeywords
          ? _value._missingKeywords
          : missingKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyzedAt: null == analyzedAt
          ? _value.analyzedAt
          : analyzedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CVAnalysisImpl implements _CVAnalysis {
  const _$CVAnalysisImpl(
      {required this.overallScore,
      required final List<String> strengths,
      required final List<String> weaknesses,
      required final Map<String, double> sectionScores,
      required final List<String> recommendations,
      required final List<String> missingKeywords,
      required this.analyzedAt})
      : _strengths = strengths,
        _weaknesses = weaknesses,
        _sectionScores = sectionScores,
        _recommendations = recommendations,
        _missingKeywords = missingKeywords;

  factory _$CVAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$CVAnalysisImplFromJson(json);

  @override
  final double overallScore;
  final List<String> _strengths;
  @override
  List<String> get strengths {
    if (_strengths is EqualUnmodifiableListView) return _strengths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strengths);
  }

  final List<String> _weaknesses;
  @override
  List<String> get weaknesses {
    if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaknesses);
  }

  final Map<String, double> _sectionScores;
  @override
  Map<String, double> get sectionScores {
    if (_sectionScores is EqualUnmodifiableMapView) return _sectionScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sectionScores);
  }

  final List<String> _recommendations;
  @override
  List<String> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  final List<String> _missingKeywords;
  @override
  List<String> get missingKeywords {
    if (_missingKeywords is EqualUnmodifiableListView) return _missingKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missingKeywords);
  }

  @override
  final DateTime analyzedAt;

  @override
  String toString() {
    return 'CVAnalysis(overallScore: $overallScore, strengths: $strengths, weaknesses: $weaknesses, sectionScores: $sectionScores, recommendations: $recommendations, missingKeywords: $missingKeywords, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CVAnalysisImpl &&
            (identical(other.overallScore, overallScore) ||
                other.overallScore == overallScore) &&
            const DeepCollectionEquality()
                .equals(other._strengths, _strengths) &&
            const DeepCollectionEquality()
                .equals(other._weaknesses, _weaknesses) &&
            const DeepCollectionEquality()
                .equals(other._sectionScores, _sectionScores) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            const DeepCollectionEquality()
                .equals(other._missingKeywords, _missingKeywords) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overallScore,
      const DeepCollectionEquality().hash(_strengths),
      const DeepCollectionEquality().hash(_weaknesses),
      const DeepCollectionEquality().hash(_sectionScores),
      const DeepCollectionEquality().hash(_recommendations),
      const DeepCollectionEquality().hash(_missingKeywords),
      analyzedAt);

  /// Create a copy of CVAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CVAnalysisImplCopyWith<_$CVAnalysisImpl> get copyWith =>
      __$$CVAnalysisImplCopyWithImpl<_$CVAnalysisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CVAnalysisImplToJson(
      this,
    );
  }
}

abstract class _CVAnalysis implements CVAnalysis {
  const factory _CVAnalysis(
      {required final double overallScore,
      required final List<String> strengths,
      required final List<String> weaknesses,
      required final Map<String, double> sectionScores,
      required final List<String> recommendations,
      required final List<String> missingKeywords,
      required final DateTime analyzedAt}) = _$CVAnalysisImpl;

  factory _CVAnalysis.fromJson(Map<String, dynamic> json) =
      _$CVAnalysisImpl.fromJson;

  @override
  double get overallScore;
  @override
  List<String> get strengths;
  @override
  List<String> get weaknesses;
  @override
  Map<String, double> get sectionScores;
  @override
  List<String> get recommendations;
  @override
  List<String> get missingKeywords;
  @override
  DateTime get analyzedAt;

  /// Create a copy of CVAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CVAnalysisImplCopyWith<_$CVAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
