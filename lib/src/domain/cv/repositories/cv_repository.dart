import 'package:result_dart/result_dart.dart';

import '../entities/cv.dart';

abstract class CVRepository {
  // Upload và phân tích CV
  Future<Result<CV>> upload(String userId, String filePath);
  Future<Result<CVAnalysis>> analyze(String cvId);
  
  // CRUD operations
  Future<Result<CV>> getById(String id);
  Future<Result<List<CV>>> getByUserId(String userId);
  Future<Result<bool>> delete(String id);
  
  // Lịch sử và thống kê
  Future<Result<List<CV>>> getHistory(String userId, {int limit = 10});
  Future<Result<Map<String, dynamic>>> getAnalyticsData(String userId);
} 