import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'import_resume_controller.freezed.dart';
part 'import_resume_controller.g.dart';

enum ImportState {
  initial,
  uploading,
  analyzing,
  done,
}

@riverpod
class ImportResumeController extends _$ImportResumeController {
  @override
  ImportResumeState build() {
    ref.onDispose(() {
      state.animationController?.dispose();
    });
    return const ImportResumeState();
  }

  Future<void> init(TickerProvider vsync) async {
    final animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1500),
    );

    state = state.copyWith(animationController: animationController);
  }

  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      state = state.copyWith(
        selectedFile: File(result.files.single.path!),
      );
    }
  }

  void clearFile() {
    state = state.copyWith(selectedFile: null);
  }

  Future<void> uploadFile() async {
    if (state.selectedFile == null) return;

    state = state.copyWith(importState: ImportState.uploading);

    try {
      // Simulate upload
      state.animationController?.forward();
      await Future.delayed(const Duration(seconds: 2));
      
      state = state.copyWith(importState: ImportState.analyzing);

      // Simulate analysis
      await Future.delayed(const Duration(seconds: 3));
      
      state = state.copyWith(
        importState: ImportState.done,
        skills: ['Flutter', 'Dart', 'UI/UX', 'Mobile Development'],
        experience: ['Senior Mobile Developer', 'UI Designer'],
        education: ['Bachelor of Computer Science'],
      );
    } catch (e) {
      state = state.copyWith(
        importState: ImportState.initial,
        error: e.toString(),
      );
    }
  }

  Future<void> selectInternalResume(String resumeId) async {
    state = state.copyWith(
      selectedInternalResumeId: resumeId,
      importState: ImportState.analyzing,
    );

    try {
      // Simulate analysis of internal resume
      await Future.delayed(const Duration(seconds: 3));
      
      state = state.copyWith(
        importState: ImportState.done,
        skills: ['Flutter', 'Dart', 'UI/UX', 'Mobile Development'],
        experience: ['Senior Mobile Developer', 'UI Designer'],
        education: ['Bachelor of Computer Science'],
      );
    } catch (e) {
      state = state.copyWith(
        importState: ImportState.initial,
        error: e.toString(),
        selectedInternalResumeId: null,
      );
    }
  }
}

@freezed
class ImportResumeState with _$ImportResumeState {
  const factory ImportResumeState({
    @Default(ImportState.initial) ImportState importState,
    File? selectedFile,
    AnimationController? animationController,
    String? error,
    @Default([]) List<String> skills,
    @Default([]) List<String> experience,
    @Default([]) List<String> education,
    String? selectedInternalResumeId,
  }) = _ImportResumeState;
}
