part of '../import_resume_page.dart';

class UploadContentView extends StatelessWidget {
  const UploadContentView({
    super.key,
    required this.theme,
    required this.selectedFile,
    required this.onPickFile,
    required this.onUploadFile,
    required this.onClearFile,
    required this.state,
    required this.onSelectInternalResume,
  });

  final ShadThemeData theme;
  final File? selectedFile;
  final VoidCallback onPickFile;
  final VoidCallback onUploadFile;
  final VoidCallback onClearFile;
  final ImportState state;
  final VoidCallback onSelectInternalResume;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.document_scanner_rounded,
            size: 48,
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 32),
        Text(
          selectedFile == null 
              ? context.s.uploadResumePageTitleAnalyze
              : context.s.uploadResumePageTitleUpload,
          style: theme.textTheme.h3.copyWith(
            color: theme.colorScheme.foreground,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          context.s.uploadResumeSupportedFormats,
          style: theme.textTheme.small.copyWith(
            color: theme.colorScheme.secondaryForeground,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          alignment: Alignment.topCenter,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.3),
                    end: Offset.zero,
                  ).animate(CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOutCubic,
                  )),
                  child: child,
                ),
              );
            },
            child: selectedFile != null
                ? Container(
                    key: ValueKey(selectedFile?.path),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: theme.colorScheme.secondary.withValues(alpha: 0.2),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.description_outlined,
                            size: 24,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                selectedFile?.path.split('/').last ?? '',
                                style: theme.textTheme.small.copyWith(
                                  color: theme.colorScheme.foreground,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                context.s.uploadResumeFileSize(
                                  ((selectedFile?.lengthSync() ?? 0) / 1024).toStringAsFixed(2),
                                ),
                                style: theme.textTheme.small.copyWith(
                                  color: theme.colorScheme.secondaryForeground,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close_rounded,
                            color: theme.colorScheme.foreground,
                          ),
                          onPressed: onClearFile,
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
        const SizedBox(height: 32),
        if (selectedFile == null) ...[
          ShadButton.destructive(
            onPressed: onSelectInternalResume,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.description_rounded,
                  size: 20,
                  color: Colors.white,
                ),
                const SizedBox(width: 8),
                Text(
                  context.s.uploadResumeSelectExisting,
                  style: theme.textTheme.small.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 1,
                  color: theme.colorScheme.border,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  context.s.uploadResumeOrText,
                  style: theme.textTheme.small.copyWith(
                    color: theme.colorScheme.secondaryForeground,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 1,
                  color: theme.colorScheme.border,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ShadButton.outline(
            onPressed: onPickFile,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.upload_file_rounded,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  selectedFile == null 
                      ? context.s.uploadResumeAnalyzeButton
                      : context.s.uploadResumeUploadButton,
                  style: theme.textTheme.small.copyWith(
                    fontWeight: FontWeight.w500,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: selectedFile == null ? 1.0 : 0.0,
            child: Text(
              'or ${context.s.uploadResumeDragDrop}',
              style: theme.textTheme.small.copyWith(
                color: theme.colorScheme.secondaryForeground,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ] else ...[
          ShadButton.destructive(
            onPressed: state == ImportState.initial ? onUploadFile : null,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.check_rounded,
                  size: 20,
                  color: Colors.white,
                ),
                const SizedBox(width: 8),
                Text(
                  context.s.uploadResumeUploadButton,
                  style: theme.textTheme.small.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
