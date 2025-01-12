
import 'package:result_dart/result_dart.dart';
import '../entities/template.dart';

abstract class TemplateRepository {
  Future<Result<List<Template>>> getTemplates({
    String? category,
    bool? isPremium,
  });
  
  Future<Result<Template>> getTemplateById(String id);
  
  Future<Result<List<String>>> getCategories();
}
