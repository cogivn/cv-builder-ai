part of '../import_resume_page.dart';

class ResumePickerDialog extends StatelessWidget {
  const ResumePickerDialog({
    super.key,
    required this.theme,
    required this.onSelect,
  });

  final ShadThemeData theme;
  final void Function(String resumeId) onSelect;

  @override
  Widget build(BuildContext context) {
    // Simulated list of resumes
    final resumes = [
      _Resume(
        id: '1',
        name: 'Software Engineer Resume',
        lastModified: DateTime.now().subtract(const Duration(days: 2)),
      ),
      _Resume(
        id: '2',
        name: 'Product Manager Resume',
        lastModified: DateTime.now().subtract(const Duration(days: 5)),
      ),
      _Resume(
        id: '3',
        name: 'UI/UX Designer Resume',
        lastModified: DateTime.now().subtract(const Duration(days: 7)),
      ),
    ];

    return Dialog(
      backgroundColor: theme.colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: 400,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  context.s.resumePickerTitle,
                  style: theme.textTheme.h4.copyWith(
                    color: theme.colorScheme.foreground,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(
                    Icons.close_rounded,
                    color: theme.colorScheme.foreground,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              context.s.resumePickerSubtitle,
              style: theme.textTheme.small.copyWith(
                color: theme.colorScheme.secondaryForeground,
              ),
            ),
            const SizedBox(height: 24),
            for (final resume in resumes) ...[
              if (resume != resumes.first) const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  onSelect(resume.id);
                },
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.colorScheme.border,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.description_outlined,
                          size: 20,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              resume.name,
                              style: theme.textTheme.small.copyWith(
                                color: theme.colorScheme.foreground,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Modified ${_formatDate(context, resume.lastModified)}',
                              style: theme.textTheme.small.copyWith(
                                color: theme.colorScheme.secondaryForeground,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: theme.colorScheme.secondaryForeground,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _formatDate(BuildContext context, DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return context.s.resumePickerModifiedToday;
    } else if (difference.inDays == 1) {
      return context.s.resumePickerModifiedYesterday;
    } else if (difference.inDays < 7) {
      return context.s.resumePickerModifiedDaysAgo(difference.inDays);
    } else {
      return context.s.resumePickerModifiedDate(
        date.day,
        date.month,
        date.year,
      );
    }
  }
}

class _Resume {
  final String id;
  final String name;
  final DateTime lastModified;

  const _Resume({
    required this.id,
    required this.name,
    required this.lastModified,
  });
}
