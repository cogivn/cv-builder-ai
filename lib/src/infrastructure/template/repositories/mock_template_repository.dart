import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import '../../../domain/template/entities/template.dart';
import '../../../domain/template/repositories/template_repository.dart';

@Singleton(as: TemplateRepository)
class MockTemplateRepository implements TemplateRepository {
  @override
  Future<Result<List<Template>>> getTemplates({
    String? category,
    bool? isPremium,
  }) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));

      final templates = [
        Template(
          id: '1',
          name: 'Professional CV',
          description:
              'Clean and modern CV template perfect for job applications',
          thumbnailUrl: 'https://placehold.co/400x400/png',
          category: 'Professional',
          isPremium: true,
          createdAt: DateTime.now(),
        ),
        Template(
          id: '2',
          name: 'Creative Resume',
          createdAt: DateTime.now(),
          description: 'Stand out with this creative and unique resume design',
          thumbnailUrl: 'https://placehold.co/400x400/png',
          category: 'Creative',
          isPremium: false,
        ),
        Template(
          id: '3',
          name: 'Academic CV',
          createdAt: DateTime.now(),
          description: 'Detailed template for academic and research positions',
          thumbnailUrl: 'https://placehold.co/400x400/png',
          category: 'Academic',
          isPremium: true,
        ),
        Template(
          id: '4',
          name: 'Simple Resume',
          createdAt: DateTime.now(),
          description: 'Clean and straightforward resume template',
          thumbnailUrl: 'https://placehold.co/400x400/png',
          category: 'Simple',
          isPremium: false,
        ),
        Template(
          id: '5',
          name: 'Executive CV',
          createdAt: DateTime.now(),
          description: 'Professional template for senior positions',
          thumbnailUrl: 'https://placehold.co/400x400/png',
          category: 'Professional',
          isPremium: true,
        ),
        Template(
          id: '6',
          name: 'Modern Resume',
          createdAt: DateTime.now(),
          description: 'Contemporary design with a clean layout',
          thumbnailUrl: 'https://placehold.co/400x400/png',
          category: 'Modern',
          isPremium: false,
        ),
      ];

      var filteredTemplates = templates;

      if (category != null) {
        filteredTemplates = filteredTemplates
            .where((template) => template.category == category)
            .toList();
      }

      if (isPremium != null) {
        filteredTemplates = filteredTemplates
            .where((template) => template.isPremium == isPremium)
            .toList();
      }

      return Success(filteredTemplates);
    } catch (e) {
      return Failure(Exception('Failed to load templates: $e'));
    }
  }

  @override
  Future<Result<List<String>>> getCategories() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Success([
        'Professional',
        'Creative',
        'Academic',
        'Simple',
        'Modern',
      ]);
    } catch (e) {
      return Failure(Exception('Failed to load categories: $e'));
    }
  }

  @override
  Future<Result<Template>> getTemplateById(String id) {
    // TODO: implement getTemplateById
    throw UnimplementedError();
  }
}
