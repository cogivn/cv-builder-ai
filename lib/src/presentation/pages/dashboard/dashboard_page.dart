import 'package:auto_route/annotations.dart';
import 'package:cv_builder_ai/src/core/l10n/messages.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final colorScheme = theme.colorScheme;
    final messages = context.s;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with user info and quick actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        messages.dashboardWelcomeBack,
                        style: theme.textTheme.h2.copyWith(
                          color: colorScheme.foreground,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'John Doe', // TODO: Replace with actual user name
                        style: theme.textTheme.h4.copyWith(
                          color: colorScheme.foreground.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                  ShadButton(
                    onPressed: () {
                      // TODO: Navigate to profile settings
                    },
                    backgroundColor: Colors.transparent,
                    hoverBackgroundColor: colorScheme.primary.withOpacity(0.1),
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: colorScheme.foreground,
                      size: 32,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Quick Actions Grid
              Text(
                messages.dashboardQuickActions,
                style: theme.textTheme.h3.copyWith(
                  color: colorScheme.foreground,
                ),
              ),
              const SizedBox(height: 16),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.5,
                children: [
                  _QuickActionCard(
                    title: messages.dashboardCreateCV,
                    icon: Icons.add_circle_outline,
                    onTap: () {
                      // TODO: Navigate to CV creation page
                    },
                    theme: theme,
                  ),
                  _QuickActionCard(
                    title: messages.dashboardMyCVs,
                    icon: Icons.description_outlined,
                    onTap: () {
                      // TODO: Navigate to CV list page
                    },
                    theme: theme,
                  ),
                  _QuickActionCard(
                    title: messages.dashboardAIAnalysis,
                    icon: Icons.analytics_outlined,
                    onTap: () {
                      // TODO: Navigate to CV analysis page
                    },
                    theme: theme,
                  ),
                  _QuickActionCard(
                    title: messages.dashboardJobMatches,
                    icon: Icons.work_outline,
                    onTap: () {
                      // TODO: Navigate to job matches page
                    },
                    theme: theme,
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Recent Activity Section
              Text(
                messages.dashboardRecentActivity,
                style: theme.textTheme.h3.copyWith(
                  color: colorScheme.foreground,
                ),
              ),
              const SizedBox(height: 16),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3, // Show last 3 activities
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  return _ActivityCard(
                    title: 'Software Engineer CV', // TODO: Replace with actual CV title
                    subtitle: messages.dashboardLastEdited('2'),
                    icon: Icons.description_outlined,
                    onTap: () {
                      // TODO: Navigate to specific CV
                    },
                    theme: theme,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuickActionCard extends StatefulWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final ShadThemeData theme;

  const _QuickActionCard({
    required this.title,
    required this.icon,
    required this.onTap,
    required this.theme,
  });

  @override
  State<_QuickActionCard> createState() => _QuickActionCardState();
}

class _QuickActionCardState extends State<_QuickActionCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = widget.theme.colorScheme;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          child: ShadCard(
            backgroundColor: isHovered 
              ? colorScheme.primary.withOpacity(0.1)
              : colorScheme.card,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedScale(
                  duration: const Duration(milliseconds: 200),
                  scale: isHovered ? 1.1 : 1.0,
                  child: Icon(
                    widget.icon,
                    size: 32,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  widget.title,
                  style: widget.theme.textTheme.h4.copyWith(
                    color: colorScheme.foreground,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ActivityCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;
  final ShadThemeData theme;

  const _ActivityCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
    required this.theme,
  });

  @override
  State<_ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<_ActivityCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = widget.theme.colorScheme;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          child: ShadCard(
            backgroundColor: isHovered 
              ? colorScheme.primary.withOpacity(0.1)
              : colorScheme.card,
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                AnimatedScale(
                  duration: const Duration(milliseconds: 200),
                  scale: isHovered ? 1.1 : 1.0,
                  child: Icon(
                    widget.icon,
                    size: 24,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: widget.theme.textTheme.h4.copyWith(
                          color: colorScheme.foreground,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.subtitle,
                        style: widget.theme.textTheme.small.copyWith(
                          color: colorScheme.foreground.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedSlide(
                  duration: const Duration(milliseconds: 200),
                  offset: isHovered ? const Offset(0.2, 0) : Offset.zero,
                  child: Icon(
                    Icons.chevron_right,
                    size: 24,
                    color: colorScheme.foreground.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
