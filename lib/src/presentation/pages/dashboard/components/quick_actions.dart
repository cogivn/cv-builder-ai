import 'package:auto_route/auto_route.dart';
import 'package:cv_builder_ai/src/core/l10n/messages.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../router/app_router.dart';

class QuickAction {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const QuickAction({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final colorScheme = theme.colorScheme;

    final quickActions = [
      QuickAction(
        title: context.s.quickActionsCreateResume,
        icon: Icons.add_rounded,
        onTap: () {},
      ),
      QuickAction(
        title: context.s.quickActionsImportResume,
        icon: Icons.upload_file_rounded,
        onTap: () {
          context.router.push(const ImportResumeRoute());
        },
      ),
      QuickAction(
        title: context.s.quickActionsBrowseTemplates,
        icon: Icons.style_rounded,
        onTap: () {
          context.pushRoute(BrowseTemplatesRoute());
        },
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.s.quickActionsTitle,
          style: theme.textTheme.large.copyWith(
            color: colorScheme.foreground,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            for (final action in quickActions) ...[
              if (action != quickActions.first) const SizedBox(width: 12),
              Expanded(
                child: _QuickActionCard(
                  action: action,
                  theme: theme,
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}

class _QuickActionCard extends StatefulWidget {
  final QuickAction action;
  final ShadThemeData theme;

  const _QuickActionCard({
    required this.action,
    required this.theme,
  });

  @override
  State<_QuickActionCard> createState() => _QuickActionCardState();
}

class _QuickActionCardState extends State<_QuickActionCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    setState(() => _isPressed = true);
    _controller.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() => _isPressed = false);
    _controller.reverse();
    widget.action.onTap();
  }

  void _handleTapCancel() {
    setState(() => _isPressed = false);
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = widget.theme.colorScheme;

    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) => Transform.scale(
          scale: _scaleAnimation.value,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: _isPressed
                  ? colorScheme.primary.withValues(alpha: 0.05)
                  : colorScheme.card,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: _isPressed
                    ? colorScheme.primary.withValues(alpha: 0.2)
                    : colorScheme.border,
                width: 1,
              ),
              boxShadow: [
                if (!_isPressed)
                  BoxShadow(
                    color: colorScheme.border.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    widget.action.icon,
                    color: colorScheme.primary,
                    size: 32,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.action.title,
                  style: widget.theme.textTheme.small.copyWith(
                    color: colorScheme.foreground,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
