// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CVImpl _$$CVImplFromJson(Map<String, dynamic> json) => _$CVImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      fileName: json['fileName'] as String,
      fileUrl: json['fileUrl'] as String,
      fileType: json['fileType'] as String,
      fileSize: (json['fileSize'] as num).toDouble(),
      uploadedAt: DateTime.parse(json['uploadedAt'] as String),
      status: $enumDecode(_$CVStatusEnumMap, json['status']),
      analysis: json['analysis'] == null
          ? null
          : CVAnalysis.fromJson(json['analysis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CVImplToJson(_$CVImpl instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
      'fileType': instance.fileType,
      'fileSize': instance.fileSize,
      'uploadedAt': instance.uploadedAt.toIso8601String(),
      'status': _$CVStatusEnumMap[instance.status]!,
      'analysis': instance.analysis,
    };

const _$CVStatusEnumMap = {
  CVStatus.pending: 'pending',
  CVStatus.analyzing: 'analyzing',
  CVStatus.completed: 'completed',
  CVStatus.failed: 'failed',
};

_$CVAnalysisImpl _$$CVAnalysisImplFromJson(Map<String, dynamic> json) =>
    _$CVAnalysisImpl(
      overallScore: (json['overallScore'] as num).toDouble(),
      strengths:
          (json['strengths'] as List<dynamic>).map((e) => e as String).toList(),
      weaknesses: (json['weaknesses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sectionScores: (json['sectionScores'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      missingKeywords: (json['missingKeywords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      analyzedAt: DateTime.parse(json['analyzedAt'] as String),
    );

Map<String, dynamic> _$$CVAnalysisImplToJson(_$CVAnalysisImpl instance) =>
    <String, dynamic>{
      'overallScore': instance.overallScore,
      'strengths': instance.strengths,
      'weaknesses': instance.weaknesses,
      'sectionScores': instance.sectionScores,
      'recommendations': instance.recommendations,
      'missingKeywords': instance.missingKeywords,
      'analyzedAt': instance.analyzedAt.toIso8601String(),
    };
