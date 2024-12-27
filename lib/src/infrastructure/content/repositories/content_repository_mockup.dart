import 'package:cv_builder_ai/src/core/errors/api_error.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';

import '../../../core/config/environment.dart';
import '../../../domain/content/entities/content.dart';
import '../../../domain/content/repositories/content_repository.dart';

@Singleton(as: ContentRepository)
class ContentRepositoryMockup implements ContentRepository {
  final _mockResources = <Resource>[
    Resource(
      id: 'resource_1',
      title: 'CV Writing Best Practices',
      description: 'Learn how to write a professional CV that stands out',
      type: ResourceType.guide,
      contentUrl: 'https://mock.url/guides/cv-best-practices',
      tags: ['cv writing', 'professional', 'career'],
      isPremium: false,
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
    ),
    Resource(
      id: 'resource_2',
      title: 'Interview Preparation Guide',
      description: 'Comprehensive guide for job interview preparation',
      type: ResourceType.video,
      contentUrl: 'https://mock.url/videos/interview-prep',
      tags: ['interview', 'career', 'preparation'],
      isPremium: true,
      createdAt: DateTime.now().subtract(const Duration(days: 15)),
    ),
  ];

  final _mockTemplates = <Template>[
    Template(
      id: 'template_1',
      name: 'Modern Professional',
      description: 'Clean and modern CV template for professionals',
      previewUrl: 'https://mock.url/templates/modern-preview.jpg',
      downloadUrl: 'https://mock.url/templates/modern-professional.docx',
      industries: ['Technology', 'Business', 'Design'],
      isPremium: false,
      downloads: 1200,
    ),
    Template(
      id: 'template_2',
      name: 'Creative Portfolio',
      description: 'Stand out with this creative CV template',
      previewUrl: 'https://mock.url/templates/creative-preview.jpg',
      downloadUrl: 'https://mock.url/templates/creative-portfolio.docx',
      industries: ['Design', 'Marketing', 'Arts'],
      isPremium: true,
      downloads: 850,
    ),
  ];

  @override
  Future<Result<List<Resource>>> getResources({
    required ResourceType type,
    bool isPremium = false,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final resources = _mockResources
          .where((r) => r.type == type && r.isPremium == isPremium)
          .toList();

      final start = (page - 1) * limit;
      final end = start + limit;

      final paginatedResources = resources.length > start
          ? resources.sublist(start, end.clamp(0, resources.length))
          : <Resource>[];

      return Success(paginatedResources);
    } catch (e) {
      return Failure(ApiError.request(
          message: 'Failed to fetch resources: ${e.toString()}'));
    }
  }

  @override
  Future<Result<Resource>> getResourceById(String id) async {
    try {
      final resource = _mockResources.firstWhere((r) => r.id == id);
      return Success(resource);
    } catch (e) {
      return Failure(ApiError.request(message: 'Resource not found'));
    }
  }

  @override
  Future<Result<List<Template>>> getTemplates({
    String? industry,
    bool isPremium = false,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      var templates = _mockTemplates.where((t) => t.isPremium == isPremium);

      if (industry != null) {
        templates = templates.where((t) => t.industries.contains(industry));
      }

      final templateList = templates.toList();
      final start = (page - 1) * limit;
      final end = start + limit;

      final paginatedTemplates = templateList.length > start
          ? templateList.sublist(start, end.clamp(0, templateList.length))
          : <Template>[];

      return Success(paginatedTemplates);
    } catch (e) {
      return Failure(ApiError.request(
          message: 'Failed to fetch templates: ${e.toString()}'));
    }
  }

  @override
  Future<Result<Template>> getTemplateById(String id) async {
    try {
      final template = _mockTemplates.firstWhere((t) => t.id == id);
      return Success(template);
    } catch (e) {
      return Failure(ApiError.request(message: 'Template not found'));
    }
  }

  @override
  Future<Result<bool>> incrementTemplateDownloads(String templateId) async {
    try {
      final index = _mockTemplates.indexWhere((t) => t.id == templateId);
      if (index == -1) throw Exception('Template not found');

      _mockTemplates[index] = _mockTemplates[index].copyWith(
        downloads: _mockTemplates[index].downloads + 1,
      );

      return const Success(true);
    } catch (e) {
      return Failure(ApiError.request(
          message: 'Failed to update download count: ${e.toString()}'));
    }
  }

  @override
  Future<Result<List<Resource>>> searchResources(String query) async {
    try {
      final lowercaseQuery = query.toLowerCase();
      final results = _mockResources
          .where((r) =>
              r.title.toLowerCase().contains(lowercaseQuery) ||
              r.description.toLowerCase().contains(lowercaseQuery) ||
              r.tags.any((tag) => tag.toLowerCase().contains(lowercaseQuery)))
          .toList();

      return Success(results);
    } catch (e) {
      return Failure(ApiError.request(
          message: 'Failed to search resources: ${e.toString()}'));
    }
  }

  @override
  Future<Result<List<Template>>> searchTemplates(String query) async {
    try {
      final lowercaseQuery = query.toLowerCase();
      final results = _mockTemplates
          .where((t) =>
              t.name.toLowerCase().contains(lowercaseQuery) ||
              t.description.toLowerCase().contains(lowercaseQuery) ||
              t.industries.any((industry) =>
                  industry.toLowerCase().contains(lowercaseQuery)))
          .toList();

      return Success(results);
    } catch (e) {
      return Failure(ApiError.request(
          message: 'Failed to search templates: ${e.toString()}'));
    }
  }
}
