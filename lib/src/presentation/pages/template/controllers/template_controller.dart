import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/config/di.dart';
import '../../../../domain/template/entities/template.dart';
import '../../../../domain/template/repositories/template_repository.dart';

part 'template_controller.freezed.dart';
part 'template_controller.g.dart';

@freezed
class TemplateState with _$TemplateState {
  const factory TemplateState.initial() = _Initial;
  const factory TemplateState.loading() = _Loading;
  const factory TemplateState.loaded(List<Template> templates) = _Loaded;
  const factory TemplateState.error(String message) = _Error;
}

@riverpod
class TemplateController extends _$TemplateController {
  late final TemplateRepository _templateRepository;

  @override
  TemplateState build() {
    _templateRepository = getIt<TemplateRepository>();
    return const TemplateState.initial();
  }

  Future<void> loadTemplates({
    String? category,
    bool? isPremium,
  }) async {
    state = const TemplateState.loading();

    try {
      final result = await _templateRepository.getTemplates(
        category: category,
        isPremium: isPremium,
      );

      result.fold(
        (templates) => state = TemplateState.loaded(templates),
        (failure) => state = TemplateState.error(failure.toString()),
      );
    } catch (e) {
      state = TemplateState.error(e.toString());
    }
  }

  Future<List<String>> getCategories() async {
    try {
      final result = await _templateRepository.getCategories();
      return result.fold(
        (categories) => categories,
        (failure) => throw failure,
      );
    } catch (e) {
      throw e;
    }
  }

  Future<Template?> getTemplateById(String id) async {
    try {
      final result = await _templateRepository.getTemplateById(id);
      return result.fold(
        (template) => template,
        (failure) => throw failure,
      );
    } catch (e) {
      throw e;
    }
  }
}
