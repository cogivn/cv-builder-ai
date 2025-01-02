part of '../import_resume_page.dart';

class UploadProgressView extends StatelessWidget {
  const UploadProgressView({
    super.key,
    required this.animation,
    required this.theme,
  });

  final AnimationController animation;
  final ShadThemeData theme;

  @override
  Widget build(BuildContext context) {
    final progressAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animation,
        curve: const Interval(0, 0.6, curve: Curves.easeInOut),
      ),
    );

    final fadeAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: animation,
        curve: const Interval(0.6, 0.8, curve: Curves.easeInOut),
      ),
    );

    final scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
        parent: animation,
        curve: const Interval(0.6, 0.8, curve: Curves.easeInOut),
      ),
    );

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Opacity(
          opacity: fadeAnimation.value,
          child: Transform.scale(
            scale: scaleAnimation.value,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircularProgressIndicator(
                        value: progressAnimation.value,
                        strokeWidth: 8,
                        backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
                        valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
                      ),
                    ),
                    Icon(
                      Icons.upload_rounded,
                      size: 32,
                      color: theme.colorScheme.primary,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  'Uploading Resume...',
                  style: theme.textTheme.h4.copyWith(
                    color: theme.colorScheme.foreground,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${(progressAnimation.value * 100).toInt()}%',
                  style: theme.textTheme.small.copyWith(
                    color: theme.colorScheme.secondaryForeground,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
