import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cv_builder_ai/src/core/l10n/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'controllers/import_resume_controller.dart';

part 'components/analyzing_view.dart';

part 'components/analysis_done_view.dart';

part 'components/upload_content_view.dart';

part 'components/upload_progress_view.dart';

part 'components/resume_picker_dialog.dart';

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

  Widget _buildAnimatedChild(Widget child) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.2),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeOutCubic,
            )),
            child: child,
          ),
        );
      },
      child: child,
    );
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
      }
    });

    Widget currentView;
    if (state.importState == ImportState.uploading) {
      currentView = UploadProgressView(
        animation: state.animationController!,
        theme: theme,
      );
    } else if (state.importState == ImportState.analyzing) {
      currentView = AnalyzingView(
        theme: theme,
        onSkip: () => context.maybePop(),
      );
    } else if (state.importState == ImportState.done) {
      currentView = AnalysisDoneView(
        theme: theme,
        onViewAnalysis: () {
          // Navigate to analysis page
          // context.router.push(const ResumeAnalysisRoute());
        },
        onDismiss: () => context.maybePop(),
      );
    } else {
      currentView = UploadContentView(
        theme: theme,
        selectedFile: state.selectedFile,
        onPickFile: controller.pickFile,
        onUploadFile: controller.uploadFile,
        onClearFile: controller.clearFile,
        state: state.importState,
        onSelectInternalResume: () {
          showDialog(
            context: context,
            builder: (context) => ResumePickerDialog(
              theme: theme,
              onSelect: controller.selectInternalResume,
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(elevation: 0),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildAnimatedChild(currentView),
            ],
          ),
        ),
      ),
    );
  }
}
