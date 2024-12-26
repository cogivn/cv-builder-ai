// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'request':
      return RequestError.fromJson(json);
    case 'network':
      return NetworkError.fromJson(json);
    case 'server':
      return ServerError.fromJson(json);
    case 'unauthorized':
      return UnauthorizedError.fromJson(json);
    case 'notFound':
      return NotFoundError.fromJson(json);
    case 'badRequest':
      return BadRequestError.fromJson(json);
    case 'cancelled':
      return CancelledError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiError {
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)
        request,
    required TResult Function(String? message, String code, int? statusCode)
        network,
    required TResult Function(String? message, String code, int statusCode)
        server,
    required TResult Function(String? message, String code, int statusCode)
        unauthorized,
    required TResult Function(String? message, String code, int statusCode)
        notFound,
    required TResult Function(String? message, String code, int statusCode)
        badRequest,
    required TResult Function(String? message, String code) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult? Function(String? message, String code, int? statusCode)? network,
    TResult? Function(String? message, String code, int statusCode)? server,
    TResult? Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult? Function(String? message, String code, int statusCode)? notFound,
    TResult? Function(String? message, String code, int statusCode)? badRequest,
    TResult? Function(String? message, String code)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult Function(String? message, String code, int? statusCode)? network,
    TResult Function(String? message, String code, int statusCode)? server,
    TResult Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult Function(String? message, String code, int statusCode)? notFound,
    TResult Function(String? message, String code, int statusCode)? badRequest,
    TResult Function(String? message, String code)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestError value) request,
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(CancelledError value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestError value)? request,
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(CancelledError value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestError value)? request,
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(CancelledError value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ApiError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message!
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code!
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$RequestErrorImplCopyWith(
          _$RequestErrorImpl value, $Res Function(_$RequestErrorImpl) then) =
      __$$RequestErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? code, int? statusCode, dynamic rawData});
}

/// @nodoc
class __$$RequestErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$RequestErrorImpl>
    implements _$$RequestErrorImplCopyWith<$Res> {
  __$$RequestErrorImplCopyWithImpl(
      _$RequestErrorImpl _value, $Res Function(_$RequestErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
    Object? statusCode = freezed,
    Object? rawData = freezed,
  }) {
    return _then(_$RequestErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      rawData: freezed == rawData
          ? _value.rawData
          : rawData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestErrorImpl extends RequestError {
  const _$RequestErrorImpl(
      {required this.message,
      this.code,
      this.statusCode,
      this.rawData,
      final String? $type})
      : $type = $type ?? 'request',
        super._();

  factory _$RequestErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestErrorImplFromJson(json);

  @override
  final String message;
  @override
  final String? code;
  @override
  final int? statusCode;
  @override
  final dynamic rawData;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.rawData, rawData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode,
      const DeepCollectionEquality().hash(rawData));

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestErrorImplCopyWith<_$RequestErrorImpl> get copyWith =>
      __$$RequestErrorImplCopyWithImpl<_$RequestErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)
        request,
    required TResult Function(String? message, String code, int? statusCode)
        network,
    required TResult Function(String? message, String code, int statusCode)
        server,
    required TResult Function(String? message, String code, int statusCode)
        unauthorized,
    required TResult Function(String? message, String code, int statusCode)
        notFound,
    required TResult Function(String? message, String code, int statusCode)
        badRequest,
    required TResult Function(String? message, String code) cancelled,
  }) {
    return request(message, code, statusCode, rawData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult? Function(String? message, String code, int? statusCode)? network,
    TResult? Function(String? message, String code, int statusCode)? server,
    TResult? Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult? Function(String? message, String code, int statusCode)? notFound,
    TResult? Function(String? message, String code, int statusCode)? badRequest,
    TResult? Function(String? message, String code)? cancelled,
  }) {
    return request?.call(message, code, statusCode, rawData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult Function(String? message, String code, int? statusCode)? network,
    TResult Function(String? message, String code, int statusCode)? server,
    TResult Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult Function(String? message, String code, int statusCode)? notFound,
    TResult Function(String? message, String code, int statusCode)? badRequest,
    TResult Function(String? message, String code)? cancelled,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(message, code, statusCode, rawData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestError value) request,
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(CancelledError value) cancelled,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestError value)? request,
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(CancelledError value)? cancelled,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestError value)? request,
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(CancelledError value)? cancelled,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestErrorImplToJson(
      this,
    );
  }
}

abstract class RequestError extends ApiError {
  const factory RequestError(
      {required final String message,
      final String? code,
      final int? statusCode,
      final dynamic rawData}) = _$RequestErrorImpl;
  const RequestError._() : super._();

  factory RequestError.fromJson(Map<String, dynamic> json) =
      _$RequestErrorImpl.fromJson;

  @override
  String get message;
  @override
  String? get code;
  int? get statusCode;
  dynamic get rawData;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestErrorImplCopyWith<_$RequestErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String code, int? statusCode});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$NetworkErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkErrorImpl extends NetworkError {
  const _$NetworkErrorImpl(
      {this.message,
      this.code = 'NETWORK_ERROR',
      this.statusCode,
      final String? $type})
      : $type = $type ?? 'network',
        super._();

  factory _$NetworkErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkErrorImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey()
  final String code;
  @override
  final int? statusCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<_$NetworkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)
        request,
    required TResult Function(String? message, String code, int? statusCode)
        network,
    required TResult Function(String? message, String code, int statusCode)
        server,
    required TResult Function(String? message, String code, int statusCode)
        unauthorized,
    required TResult Function(String? message, String code, int statusCode)
        notFound,
    required TResult Function(String? message, String code, int statusCode)
        badRequest,
    required TResult Function(String? message, String code) cancelled,
  }) {
    return network(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult? Function(String? message, String code, int? statusCode)? network,
    TResult? Function(String? message, String code, int statusCode)? server,
    TResult? Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult? Function(String? message, String code, int statusCode)? notFound,
    TResult? Function(String? message, String code, int statusCode)? badRequest,
    TResult? Function(String? message, String code)? cancelled,
  }) {
    return network?.call(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult Function(String? message, String code, int? statusCode)? network,
    TResult Function(String? message, String code, int statusCode)? server,
    TResult Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult Function(String? message, String code, int statusCode)? notFound,
    TResult Function(String? message, String code, int statusCode)? badRequest,
    TResult Function(String? message, String code)? cancelled,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestError value) request,
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(CancelledError value) cancelled,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestError value)? request,
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(CancelledError value)? cancelled,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestError value)? request,
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(CancelledError value)? cancelled,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkErrorImplToJson(
      this,
    );
  }
}

abstract class NetworkError extends ApiError {
  const factory NetworkError(
      {final String? message,
      final String code,
      final int? statusCode}) = _$NetworkErrorImpl;
  const NetworkError._() : super._();

  factory NetworkError.fromJson(Map<String, dynamic> json) =
      _$NetworkErrorImpl.fromJson;

  @override
  String? get message;
  @override
  String get code;
  int? get statusCode;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String code, int statusCode});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = null,
    Object? statusCode = null,
  }) {
    return _then(_$ServerErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerErrorImpl extends ServerError {
  const _$ServerErrorImpl(
      {this.message,
      this.code = 'SERVER_ERROR',
      this.statusCode = 500,
      final String? $type})
      : $type = $type ?? 'server',
        super._();

  factory _$ServerErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerErrorImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final int statusCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)
        request,
    required TResult Function(String? message, String code, int? statusCode)
        network,
    required TResult Function(String? message, String code, int statusCode)
        server,
    required TResult Function(String? message, String code, int statusCode)
        unauthorized,
    required TResult Function(String? message, String code, int statusCode)
        notFound,
    required TResult Function(String? message, String code, int statusCode)
        badRequest,
    required TResult Function(String? message, String code) cancelled,
  }) {
    return server(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult? Function(String? message, String code, int? statusCode)? network,
    TResult? Function(String? message, String code, int statusCode)? server,
    TResult? Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult? Function(String? message, String code, int statusCode)? notFound,
    TResult? Function(String? message, String code, int statusCode)? badRequest,
    TResult? Function(String? message, String code)? cancelled,
  }) {
    return server?.call(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult Function(String? message, String code, int? statusCode)? network,
    TResult Function(String? message, String code, int statusCode)? server,
    TResult Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult Function(String? message, String code, int statusCode)? notFound,
    TResult Function(String? message, String code, int statusCode)? badRequest,
    TResult Function(String? message, String code)? cancelled,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestError value) request,
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(CancelledError value) cancelled,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestError value)? request,
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(CancelledError value)? cancelled,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestError value)? request,
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(CancelledError value)? cancelled,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerErrorImplToJson(
      this,
    );
  }
}

abstract class ServerError extends ApiError {
  const factory ServerError(
      {final String? message,
      final String code,
      final int statusCode}) = _$ServerErrorImpl;
  const ServerError._() : super._();

  factory ServerError.fromJson(Map<String, dynamic> json) =
      _$ServerErrorImpl.fromJson;

  @override
  String? get message;
  @override
  String get code;
  int get statusCode;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$UnauthorizedErrorImplCopyWith(_$UnauthorizedErrorImpl value,
          $Res Function(_$UnauthorizedErrorImpl) then) =
      __$$UnauthorizedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String code, int statusCode});
}

/// @nodoc
class __$$UnauthorizedErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$UnauthorizedErrorImpl>
    implements _$$UnauthorizedErrorImplCopyWith<$Res> {
  __$$UnauthorizedErrorImplCopyWithImpl(_$UnauthorizedErrorImpl _value,
      $Res Function(_$UnauthorizedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = null,
    Object? statusCode = null,
  }) {
    return _then(_$UnauthorizedErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnauthorizedErrorImpl extends UnauthorizedError {
  const _$UnauthorizedErrorImpl(
      {this.message,
      this.code = 'UNAUTHORIZED',
      this.statusCode = 401,
      final String? $type})
      : $type = $type ?? 'unauthorized',
        super._();

  factory _$UnauthorizedErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnauthorizedErrorImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final int statusCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedErrorImplCopyWith<_$UnauthorizedErrorImpl> get copyWith =>
      __$$UnauthorizedErrorImplCopyWithImpl<_$UnauthorizedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)
        request,
    required TResult Function(String? message, String code, int? statusCode)
        network,
    required TResult Function(String? message, String code, int statusCode)
        server,
    required TResult Function(String? message, String code, int statusCode)
        unauthorized,
    required TResult Function(String? message, String code, int statusCode)
        notFound,
    required TResult Function(String? message, String code, int statusCode)
        badRequest,
    required TResult Function(String? message, String code) cancelled,
  }) {
    return unauthorized(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult? Function(String? message, String code, int? statusCode)? network,
    TResult? Function(String? message, String code, int statusCode)? server,
    TResult? Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult? Function(String? message, String code, int statusCode)? notFound,
    TResult? Function(String? message, String code, int statusCode)? badRequest,
    TResult? Function(String? message, String code)? cancelled,
  }) {
    return unauthorized?.call(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult Function(String? message, String code, int? statusCode)? network,
    TResult Function(String? message, String code, int statusCode)? server,
    TResult Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult Function(String? message, String code, int statusCode)? notFound,
    TResult Function(String? message, String code, int statusCode)? badRequest,
    TResult Function(String? message, String code)? cancelled,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestError value) request,
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(CancelledError value) cancelled,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestError value)? request,
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(CancelledError value)? cancelled,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestError value)? request,
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(CancelledError value)? cancelled,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnauthorizedErrorImplToJson(
      this,
    );
  }
}

abstract class UnauthorizedError extends ApiError {
  const factory UnauthorizedError(
      {final String? message,
      final String code,
      final int statusCode}) = _$UnauthorizedErrorImpl;
  const UnauthorizedError._() : super._();

  factory UnauthorizedError.fromJson(Map<String, dynamic> json) =
      _$UnauthorizedErrorImpl.fromJson;

  @override
  String? get message;
  @override
  String get code;
  int get statusCode;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedErrorImplCopyWith<_$UnauthorizedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$NotFoundErrorImplCopyWith(
          _$NotFoundErrorImpl value, $Res Function(_$NotFoundErrorImpl) then) =
      __$$NotFoundErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String code, int statusCode});
}

/// @nodoc
class __$$NotFoundErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$NotFoundErrorImpl>
    implements _$$NotFoundErrorImplCopyWith<$Res> {
  __$$NotFoundErrorImplCopyWithImpl(
      _$NotFoundErrorImpl _value, $Res Function(_$NotFoundErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = null,
    Object? statusCode = null,
  }) {
    return _then(_$NotFoundErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotFoundErrorImpl extends NotFoundError {
  const _$NotFoundErrorImpl(
      {this.message,
      this.code = 'NOT_FOUND',
      this.statusCode = 404,
      final String? $type})
      : $type = $type ?? 'notFound',
        super._();

  factory _$NotFoundErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotFoundErrorImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final int statusCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      __$$NotFoundErrorImplCopyWithImpl<_$NotFoundErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)
        request,
    required TResult Function(String? message, String code, int? statusCode)
        network,
    required TResult Function(String? message, String code, int statusCode)
        server,
    required TResult Function(String? message, String code, int statusCode)
        unauthorized,
    required TResult Function(String? message, String code, int statusCode)
        notFound,
    required TResult Function(String? message, String code, int statusCode)
        badRequest,
    required TResult Function(String? message, String code) cancelled,
  }) {
    return notFound(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult? Function(String? message, String code, int? statusCode)? network,
    TResult? Function(String? message, String code, int statusCode)? server,
    TResult? Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult? Function(String? message, String code, int statusCode)? notFound,
    TResult? Function(String? message, String code, int statusCode)? badRequest,
    TResult? Function(String? message, String code)? cancelled,
  }) {
    return notFound?.call(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult Function(String? message, String code, int? statusCode)? network,
    TResult Function(String? message, String code, int statusCode)? server,
    TResult Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult Function(String? message, String code, int statusCode)? notFound,
    TResult Function(String? message, String code, int statusCode)? badRequest,
    TResult Function(String? message, String code)? cancelled,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestError value) request,
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(CancelledError value) cancelled,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestError value)? request,
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(CancelledError value)? cancelled,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestError value)? request,
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(CancelledError value)? cancelled,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotFoundErrorImplToJson(
      this,
    );
  }
}

abstract class NotFoundError extends ApiError {
  const factory NotFoundError(
      {final String? message,
      final String code,
      final int statusCode}) = _$NotFoundErrorImpl;
  const NotFoundError._() : super._();

  factory NotFoundError.fromJson(Map<String, dynamic> json) =
      _$NotFoundErrorImpl.fromJson;

  @override
  String? get message;
  @override
  String get code;
  int get statusCode;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$BadRequestErrorImplCopyWith(_$BadRequestErrorImpl value,
          $Res Function(_$BadRequestErrorImpl) then) =
      __$$BadRequestErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String code, int statusCode});
}

/// @nodoc
class __$$BadRequestErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$BadRequestErrorImpl>
    implements _$$BadRequestErrorImplCopyWith<$Res> {
  __$$BadRequestErrorImplCopyWithImpl(
      _$BadRequestErrorImpl _value, $Res Function(_$BadRequestErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = null,
    Object? statusCode = null,
  }) {
    return _then(_$BadRequestErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadRequestErrorImpl extends BadRequestError {
  const _$BadRequestErrorImpl(
      {this.message,
      this.code = 'BAD_REQUEST',
      this.statusCode = 400,
      final String? $type})
      : $type = $type ?? 'badRequest',
        super._();

  factory _$BadRequestErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadRequestErrorImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final int statusCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestErrorImplCopyWith<_$BadRequestErrorImpl> get copyWith =>
      __$$BadRequestErrorImplCopyWithImpl<_$BadRequestErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)
        request,
    required TResult Function(String? message, String code, int? statusCode)
        network,
    required TResult Function(String? message, String code, int statusCode)
        server,
    required TResult Function(String? message, String code, int statusCode)
        unauthorized,
    required TResult Function(String? message, String code, int statusCode)
        notFound,
    required TResult Function(String? message, String code, int statusCode)
        badRequest,
    required TResult Function(String? message, String code) cancelled,
  }) {
    return badRequest(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult? Function(String? message, String code, int? statusCode)? network,
    TResult? Function(String? message, String code, int statusCode)? server,
    TResult? Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult? Function(String? message, String code, int statusCode)? notFound,
    TResult? Function(String? message, String code, int statusCode)? badRequest,
    TResult? Function(String? message, String code)? cancelled,
  }) {
    return badRequest?.call(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult Function(String? message, String code, int? statusCode)? network,
    TResult Function(String? message, String code, int statusCode)? server,
    TResult Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult Function(String? message, String code, int statusCode)? notFound,
    TResult Function(String? message, String code, int statusCode)? badRequest,
    TResult Function(String? message, String code)? cancelled,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestError value) request,
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(CancelledError value) cancelled,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestError value)? request,
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(CancelledError value)? cancelled,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestError value)? request,
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(CancelledError value)? cancelled,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BadRequestErrorImplToJson(
      this,
    );
  }
}

abstract class BadRequestError extends ApiError {
  const factory BadRequestError(
      {final String? message,
      final String code,
      final int statusCode}) = _$BadRequestErrorImpl;
  const BadRequestError._() : super._();

  factory BadRequestError.fromJson(Map<String, dynamic> json) =
      _$BadRequestErrorImpl.fromJson;

  @override
  String? get message;
  @override
  String get code;
  int get statusCode;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestErrorImplCopyWith<_$BadRequestErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelledErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$CancelledErrorImplCopyWith(_$CancelledErrorImpl value,
          $Res Function(_$CancelledErrorImpl) then) =
      __$$CancelledErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String code});
}

/// @nodoc
class __$$CancelledErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$CancelledErrorImpl>
    implements _$$CancelledErrorImplCopyWith<$Res> {
  __$$CancelledErrorImplCopyWithImpl(
      _$CancelledErrorImpl _value, $Res Function(_$CancelledErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = null,
  }) {
    return _then(_$CancelledErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelledErrorImpl extends CancelledError {
  const _$CancelledErrorImpl(
      {this.message, this.code = 'CANCELLED', final String? $type})
      : $type = $type ?? 'cancelled',
        super._();

  factory _$CancelledErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelledErrorImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey()
  final String code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelledErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelledErrorImplCopyWith<_$CancelledErrorImpl> get copyWith =>
      __$$CancelledErrorImplCopyWithImpl<_$CancelledErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)
        request,
    required TResult Function(String? message, String code, int? statusCode)
        network,
    required TResult Function(String? message, String code, int statusCode)
        server,
    required TResult Function(String? message, String code, int statusCode)
        unauthorized,
    required TResult Function(String? message, String code, int statusCode)
        notFound,
    required TResult Function(String? message, String code, int statusCode)
        badRequest,
    required TResult Function(String? message, String code) cancelled,
  }) {
    return cancelled(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult? Function(String? message, String code, int? statusCode)? network,
    TResult? Function(String? message, String code, int statusCode)? server,
    TResult? Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult? Function(String? message, String code, int statusCode)? notFound,
    TResult? Function(String? message, String code, int statusCode)? badRequest,
    TResult? Function(String? message, String code)? cancelled,
  }) {
    return cancelled?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? code, int? statusCode, dynamic rawData)?
        request,
    TResult Function(String? message, String code, int? statusCode)? network,
    TResult Function(String? message, String code, int statusCode)? server,
    TResult Function(String? message, String code, int statusCode)?
        unauthorized,
    TResult Function(String? message, String code, int statusCode)? notFound,
    TResult Function(String? message, String code, int statusCode)? badRequest,
    TResult Function(String? message, String code)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestError value) request,
    required TResult Function(NetworkError value) network,
    required TResult Function(ServerError value) server,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(CancelledError value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestError value)? request,
    TResult? Function(NetworkError value)? network,
    TResult? Function(ServerError value)? server,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(CancelledError value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestError value)? request,
    TResult Function(NetworkError value)? network,
    TResult Function(ServerError value)? server,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(CancelledError value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelledErrorImplToJson(
      this,
    );
  }
}

abstract class CancelledError extends ApiError {
  const factory CancelledError({final String? message, final String code}) =
      _$CancelledErrorImpl;
  const CancelledError._() : super._();

  factory CancelledError.fromJson(Map<String, dynamic> json) =
      _$CancelledErrorImpl.fromJson;

  @override
  String? get message;
  @override
  String get code;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelledErrorImplCopyWith<_$CancelledErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
