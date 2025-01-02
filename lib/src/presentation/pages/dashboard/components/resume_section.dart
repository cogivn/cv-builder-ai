import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../domain/models/resume.dart';
import 'resume_grid_item.dart';
import 'resume_list_item.dart';

class ResumeSection extends StatefulWidget {
  const ResumeSection({super.key});

  @override
  State<ResumeSection> createState() => _ResumeSectionState();
}

class _ResumeSectionState extends State<ResumeSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _rotationAnimation;
  late final Animation<double> _scaleAnimation;
  bool _isGridLayout = true;

  // For demo purposes, set this to true to show empty state
  final bool _isEmpty = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 0.25,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.8,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildEmptyState(ShadThemeData theme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.description_outlined,
              size: 48,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'No Resumes Yet',
            style: theme.textTheme.h4.copyWith(
              color: theme.colorScheme.foreground,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Create your first resume to get started',
            style: theme.textTheme.small.copyWith(
              color: theme.colorScheme.secondaryForeground,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ShadButton.outline(
            onPressed: () {
              // TODO: Implement create resume action
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.add_rounded, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Create Resume',
                  style: theme.textTheme.small.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final resumeItems = [
      Resume(
        id: '1',
        title: 'Software Engineer Resume',
        template: 'Modern',
        lastModified: DateTime.now().subtract(const Duration(days: 2)),
        progress: 0.85,
        description: 'Professional resume for software engineering positions',
      ),
      Resume(
        id: '2',
        title: 'Product Manager Resume',
        template: 'Professional',
        lastModified: DateTime.now().subtract(const Duration(days: 5)),
        progress: 0.65,
      ),
      Resume(
        id: '3',
        title: 'UI/UX Designer Resume',
        template: 'Creative',
        lastModified: DateTime.now().subtract(const Duration(days: 7)),
        progress: 0.95,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Resumes',
              style: theme.textTheme.large.copyWith(
                color: theme.colorScheme.foreground,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (!_isEmpty)
              IconButton(
                icon: AnimatedBuilder(
                  animation:
                      Listenable.merge([_rotationAnimation, _scaleAnimation]),
                  builder: (context, child) => Transform(
                    transform: Matrix4.identity()
                      ..rotateZ(_rotationAnimation.value * 2 * 3.14159)
                      ..scale(_scaleAnimation.value),
                    alignment: Alignment.center,
                    child: Icon(
                      _isGridLayout
                          ? Icons.grid_view_rounded
                          : Icons.view_agenda_rounded,
                      color: theme.colorScheme.foreground,
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _isGridLayout = !_isGridLayout;
                  });
                  if (_isGridLayout) {
                    _animationController.reverse();
                  } else {
                    _animationController.forward();
                  }
                },
              ),
          ],
        ),
        const SizedBox(height: 16),
        if (_isEmpty)
          _buildEmptyState(theme)
        else
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: _isGridLayout
                ? GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1.2,
                    ),
                    itemCount: resumeItems.length,
                    itemBuilder: (context, index) {
                      return ResumeGridItem(resume: resumeItems[index], onTap: () {  },);
                    },
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: resumeItems.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return ResumeListItem(resume: resumeItems[index], onTap: () {  },);
                    },
                  ),
          ),
      ],
    );
  }
}
