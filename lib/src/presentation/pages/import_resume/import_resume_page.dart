import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'controllers/import_resume_controller.dart';

part 'widgets/analyzing_view.dart';
part 'widgets/upload_content_view.dart';
part 'widgets/upload_progress_view.dart';

@RoutePage()
class ImportResumePage extends ConsumerStatefulWidget {
  const ImportResumePage({super.key});

  @override
  ConsumerState<ImportResumePage> createState() => _ImportResumePageState();
}

class _ImportResumePageState extends ConsumerState<ImportResumePage>
    with SingleTickerProviderStateMixin {
  
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(importResumeControllerProvider.notifier).init(this);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final state = ref.watch(importResumeControllerProvider);
    final controller = ref.read(importResumeControllerProvider.notifier);

    ref.listen(importResumeControllerProvider, (previous, next) {
      if (next.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error uploading file: ${next.error}'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      } else if (next.importState == ImportState.analyzing) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Resume is being analyzed. You can stay on this page to see the progress.'),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            duration: const Duration(seconds: 4),
          ),
        );
      }
    });

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Import Resume',
          style: theme.textTheme.h4.copyWith(
            color: theme.colorScheme.foreground,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (state.importState == ImportState.uploading)
                UploadProgressView(
                  animation: state.animationController!,
                  theme: theme,
                )
              else if (state.importState == ImportState.analyzing)
                AnalyzingView(
                  theme: theme,
                  onSkip: () => context.maybePop(),
                )
              else
                UploadContentView(
                  theme: theme,
                  selectedFile: state.selectedFile,
                  onPickFile: controller.pickFile,
                  onUploadFile: controller.uploadFile,
                  onClearFile: controller.clearFile,
                  state: state.importState,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
