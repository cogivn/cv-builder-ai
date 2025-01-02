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
  });

  final ShadThemeData theme;
  final File? selectedFile;
  final VoidCallback onPickFile;
  final VoidCallback onUploadFile;
  final VoidCallback onClearFile;
  final ImportState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(0.1),
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
          'Upload Your Resume',
          style: theme.textTheme.h3.copyWith(
            color: theme.colorScheme.foreground,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Supported formats: PDF, DOC, DOCX',
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
                      color: theme.colorScheme.secondary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.secondary.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.description_outlined,
                            size: 24,
                            color: theme.colorScheme.secondary,
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
                                '${((selectedFile?.lengthSync() ?? 0) / 1024).toStringAsFixed(2)} KB',
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
                            color: theme.colorScheme.secondaryForeground,
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
        ShadButton.destructive(
          onPressed: state == ImportState.initial 
              ? (selectedFile == null ? onPickFile : onUploadFile) 
              : null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                selectedFile == null ? Icons.upload_rounded : Icons.check_rounded,
                size: 20,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              Text(
                selectedFile == null ? 'Choose File' : 'Upload Resume',
                style: theme.textTheme.small.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        if (selectedFile == null) ...[
          const SizedBox(height: 24),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: selectedFile == null ? 1.0 : 0.0,
            child: Text(
              'or drag and drop your file here',
              style: theme.textTheme.small.copyWith(
                color: theme.colorScheme.secondaryForeground,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
