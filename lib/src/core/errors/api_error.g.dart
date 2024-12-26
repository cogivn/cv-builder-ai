// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestErrorImpl _$$RequestErrorImplFromJson(Map<String, dynamic> json) =>
    _$RequestErrorImpl(
      message: json['message'] as String,
      code: json['code'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      rawData: json['rawData'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RequestErrorImplToJson(_$RequestErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'statusCode': instance.statusCode,
      'rawData': instance.rawData,
      'runtimeType': instance.$type,
    };

_$NetworkErrorImpl _$$NetworkErrorImplFromJson(Map<String, dynamic> json) =>
    _$NetworkErrorImpl(
      message: json['message'] as String?,
      code: json['code'] as String? ?? 'NETWORK_ERROR',
      statusCode: (json['statusCode'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NetworkErrorImplToJson(_$NetworkErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'statusCode': instance.statusCode,
      'runtimeType': instance.$type,
    };

_$ServerErrorImpl _$$ServerErrorImplFromJson(Map<String, dynamic> json) =>
    _$ServerErrorImpl(
      message: json['message'] as String?,
      code: json['code'] as String? ?? 'SERVER_ERROR',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 500,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerErrorImplToJson(_$ServerErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'statusCode': instance.statusCode,
      'runtimeType': instance.$type,
    };

_$UnauthorizedErrorImpl _$$UnauthorizedErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$UnauthorizedErrorImpl(
      message: json['message'] as String?,
      code: json['code'] as String? ?? 'UNAUTHORIZED',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 401,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnauthorizedErrorImplToJson(
        _$UnauthorizedErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'statusCode': instance.statusCode,
      'runtimeType': instance.$type,
    };

_$NotFoundErrorImpl _$$NotFoundErrorImplFromJson(Map<String, dynamic> json) =>
    _$NotFoundErrorImpl(
      message: json['message'] as String?,
      code: json['code'] as String? ?? 'NOT_FOUND',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 404,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NotFoundErrorImplToJson(_$NotFoundErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'statusCode': instance.statusCode,
      'runtimeType': instance.$type,
    };

_$BadRequestErrorImpl _$$BadRequestErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$BadRequestErrorImpl(
      message: json['message'] as String?,
      code: json['code'] as String? ?? 'BAD_REQUEST',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 400,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BadRequestErrorImplToJson(
        _$BadRequestErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'statusCode': instance.statusCode,
      'runtimeType': instance.$type,
    };

_$CancelledErrorImpl _$$CancelledErrorImplFromJson(Map<String, dynamic> json) =>
    _$CancelledErrorImpl(
      message: json['message'] as String?,
      code: json['code'] as String? ?? 'CANCELLED',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CancelledErrorImplToJson(
        _$CancelledErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'runtimeType': instance.$type,
    };
