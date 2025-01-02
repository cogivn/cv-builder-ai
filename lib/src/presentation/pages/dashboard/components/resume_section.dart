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

class _ResumeSectionState extends State<ResumeSection> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _rotationAnimation;
  late final Animation<double> _scaleAnimation;
  bool _isGridLayout = true;

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
              style: theme.textTheme.h4.copyWith(
                color: theme.colorScheme.foreground,
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
              icon: AnimatedBuilder(
                animation: Listenable.merge([_rotationAnimation, _scaleAnimation]),
                builder: (context, child) => Transform(
                  transform: Matrix4.identity()
                    ..rotateZ(_rotationAnimation.value * 2 * 3.14159)
                    ..scale(_scaleAnimation.value),
                  alignment: Alignment.center,
                  child: Icon(
                    _isGridLayout ? Icons.grid_view : Icons.view_agenda_outlined,
                    color: theme.colorScheme.foreground,
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  _isGridLayout = !_isGridLayout;
                });
                _animationController.forward(from: 0);
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          switchInCurve: Curves.easeOut,
          switchOutCurve: Curves.easeIn,
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: animation,
                child: child,
              ),
            );
          },
          child: _isGridLayout
              ? GridView.count(
                  key: const ValueKey('grid'),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.6,
                  children: resumeItems.map((resume) => ResumeGridItem(
                        resume: resume,
                        onTap: () {},
                      )).toList(),
                )
              : ListView.separated(
                  key: const ValueKey('list'),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: resumeItems.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 12),
                  itemBuilder: (context, index) => ResumeListItem(
                    resume: resumeItems[index],
                    onTap: () {},
                  ),
                ),
        ),
      ],
    );
  }
}
