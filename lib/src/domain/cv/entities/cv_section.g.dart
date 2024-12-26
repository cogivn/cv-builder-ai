// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CVSectionImpl _$$CVSectionImplFromJson(Map<String, dynamic> json) =>
    _$CVSectionImpl(
      name: json['name'] as String,
      score: (json['score'] as num).toDouble(),
      feedback:
          (json['feedback'] as List<dynamic>).map((e) => e as String).toList(),
      suggestions: (json['suggestions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CVSectionImplToJson(_$CVSectionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'score': instance.score,
      'feedback': instance.feedback,
      'suggestions': instance.suggestions,
    };
