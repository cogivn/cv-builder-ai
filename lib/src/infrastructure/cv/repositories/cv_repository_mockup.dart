import 'package:cv_builder_ai/src/core/errors/api_error.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:result_dart/result_dart.dart';
import '../../../core/config/environment.dart';
import '../../../core/extensions/iterable_extensions.dart';
import '../../../domain/cv/repositories/cv_repository.dart';
import '../../../domain/cv/entities/cv.dart';

@alpha
@Singleton(as: CVRepository)
class CVRepositoryMockup implements CVRepository {
  final _uuid = const Uuid();
  final _mockCVs = <CV>[
    CV(
      id: 'mock_cv_1',
      userId: 'user_1',
      fileName: 'my_resume.pdf',
      fileUrl: 'https://mock.url/cv1.pdf',
      fileType: 'pdf',
      fileSize: 1.5,
      uploadedAt: DateTime.now().subtract(const Duration(days: 7)),
      status: CVStatus.completed,
      analysis: CVAnalysis(
        overallScore: 85.0,
        strengths: ['Clear formatting', 'Good experience section'],
        weaknesses: ['Missing keywords', 'Too lengthy'],
        sectionScores: {
          'Experience': 90.0,
          'Education': 85.0,
          'Skills': 80.0,
        },
        recommendations: ['Add more industry keywords', 'Shorten to 2 pages'],
        missingKeywords: ['leadership', 'project management'],
        analyzedAt: DateTime.now(),
      ),
    ),
  ];

  @override
  Future<Result<CV>> upload(String userId, String filePath) async {
    try {
      final newCV = CV(
        id: _uuid.v4(),
        userId: userId,
        fileName: filePath.split('/').last,
        fileUrl: 'https://mock.url/${_uuid.v4()}.pdf',
        fileType: 'pdf',
        fileSize: 2.5,
        uploadedAt: DateTime.now(),
        status: CVStatus.pending,
        analysis: null,
      );
      _mockCVs.add(newCV);
      return Success(newCV);
    } catch (e) {
      return Failure(
          ApiError.request(message: 'Failed to upload CV: ${e.toString()}'));
    }
  }

  @override
  Future<Result<CVAnalysis>> analyze(String cvId) async {
    try {
      final cv = _mockCVs.firstWhere((cv) => cv.id == cvId);
      final analysis = CVAnalysis(
        overallScore: 75.0 + (DateTime.now().millisecond % 20),
        strengths: [
          'Well-structured layout',
          'Detailed experience section',
          'Clear contact information',
        ],
        weaknesses: [
          'Missing key skills',
          'Inconsistent formatting',
        ],
        sectionScores: {
          'Experience': 85.0,
          'Education': 80.0,
          'Skills': 70.0,
          'Summary': 75.0,
        },
        recommendations: [
          'Add more industry-specific keywords',
          'Include quantifiable achievements',
          'Standardize bullet point format',
        ],
        missingKeywords: ['leadership', 'teamwork', 'innovation'],
        analyzedAt: DateTime.now(),
      );

      final updatedCV = cv.copyWith(
        status: CVStatus.completed,
        analysis: analysis,
      );

      final index = _mockCVs.indexWhere((cv) => cv.id == cvId);
      _mockCVs[index] = updatedCV;

      return Success(analysis);
    } catch (e) {
      return Failure(
          ApiError.request(message: 'Failed to analyze CV: ${e.toString()}'));
    }
  }

  @override
  Future<Result<CV>> getById(String id) async {
    try {
      final cv = _mockCVs.firstWhere((cv) => cv.id == id);
      return Success(cv);
    } catch (e) {
      return Failure(ApiError.request(message: 'CV not found!'));
    }
  }

  @override
  Future<Result<List<CV>>> getByUserId(String userId) async {
    try {
      final cvs = _mockCVs.where((cv) => cv.userId == userId).toList();
      return Success(cvs);
    } catch (e) {
      return Failure(ApiError.request(
          message: 'Failed to fetch user CVs: ${e.toString()}'));
    }
  }

  @override
  Future<Result<bool>> delete(String id) async {
    try {
      _mockCVs.removeWhere((cv) => cv.id == id);
      return Success(true);
    } catch (e) {
      return Success(false);
    }
  }

  @override
  Future<Result<List<CV>>> getHistory(String userId, {int limit = 10}) async {
    try {
      final cvs = _mockCVs.where((cv) => cv.userId == userId).toList()
        ..sort((a, b) => b.uploadedAt.compareTo(a.uploadedAt));
      return Success(cvs.take(limit).toList());
    } catch (e) {
      return Failure(ApiError.request(
          message: 'Failed to fetch CV history: ${e.toString()}'));
    }
  }

  @override
  Future<Result<Map<String, dynamic>>> getAnalyticsData(String userId) async {
    try {
      final userCVs = _mockCVs.where((cv) => cv.userId == userId).toList();
      final analytics = {
        'totalCVs': userCVs.length,
        'averageScore': userCVs
            .where((cv) => cv.analysis != null)
            .map((cv) => cv.analysis!.overallScore)
            .average,
        'improvementRate': 15.5, // Mock improvement rate
        'mostCommonWeaknesses': [
          'Missing keywords',
          'Inconsistent formatting',
          'Lack of quantifiable achievements',
        ],
      };
      return Success(analytics);
    } catch (e) {
      return Failure(ApiError.request(
          message: 'Failed to fetch analytics: ${e.toString()}'));
    }
  }
}
