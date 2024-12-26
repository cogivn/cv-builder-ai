import 'package:result_dart/result_dart.dart';

import '../entities/content.dart';


abstract class ContentRepository {
  // Resources
  Future<Result<List<Resource>>> getResources({
    required ResourceType type,
    bool isPremium = false,
    int page = 1,
    int limit = 10,
  });
  
  Future<Result<Resource>> getResourceById(String id);
  
  // Templates
  Future<Result<List<Template>>> getTemplates({
    String? industry,
    bool isPremium = false,
    int page = 1,
    int limit = 10,
  });
  
  Future<Result<Template>> getTemplateById(String id);
  Future<Result<bool>> incrementTemplateDownloads(String templateId);
  
  // Search & Filter
  Future<Result<List<Resource>>> searchResources(String query);
  Future<Result<List<Template>>> searchTemplates(String query);
} 