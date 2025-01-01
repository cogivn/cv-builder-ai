import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../core/l10n/messages.dart';
import '../../widgets/account_bottom_sheet.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  void _showAccountBottomSheet(BuildContext context) {
    final theme = ShadTheme.of(context);
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      backgroundColor: theme.colorScheme.background,
      isScrollControlled: true,
      builder: (context) => AccountBottomSheet(
        name: 'John Doe', // Replace with actual user name
        email: 'john.doe@example.com', // Replace with actual email
        avatarUrl: 'https://i.pravatar.cc/300', // Replace with actual avatar
        onManageAccount: () {
          Navigator.pop(context);
        },
        onBackupSettings: () {
          Navigator.pop(context);
        },
        onManageStorage: () {
          Navigator.pop(context);
        },
        onSettings: () {
          Navigator.pop(context);
        },
        onHelp: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final colorScheme = theme.colorScheme;
    final messages = context.s;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        backgroundColor: colorScheme.background,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 24,
        title: Row(
          children: [
            Text(
              'CV.AI',
              style: theme.textTheme.h3.copyWith(
                color: colorScheme.foreground,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () => _showAccountBottomSheet(context),
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              child: CircleAvatar(
                radius: 16,
                backgroundColor: colorScheme.muted,
                child: Icon(
                  Icons.person_outline,
                  color: colorScheme.mutedForeground,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messages.dashboardQuickActions,
                style: theme.textTheme.p.copyWith(
                  color: colorScheme.mutedForeground,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 16),
              LayoutBuilder(
                builder: (context, constraints) {
                  final isMobile = constraints.maxWidth <= 600;
                  final crossAxisCount = constraints.maxWidth > 900 ? 4 
                    : constraints.maxWidth > 600 ? 2 
                    : 2;
                  final childAspectRatio = isMobile ? 1.0 : 1.1;
                  
                  return GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: crossAxisCount,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: childAspectRatio,
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
                  );
                },
              ),
              const SizedBox(height: 32),
              Text(
                messages.dashboardRecentActivity,
                style: theme.textTheme.p.copyWith(
                  color: colorScheme.mutedForeground,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 16),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  return _ActivityCard(
                    title: 'Software Engineer CV',
                    subtitle: messages.dashboardLastEdited('2'),
                    icon: Icons.description_outlined,
                    onTap: () {
                      // TODO: Navigate to specific CV
                    },
                    theme: theme,
                  );
                },
              ),
              const SizedBox(height: 16),
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
    final isMobile = MediaQuery.of(context).size.width <= 600;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isHovered ? colorScheme.muted : colorScheme.background,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: colorScheme.border,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: colorScheme.background,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: colorScheme.border,
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    widget.icon,
                    color: colorScheme.foreground,
                    size: 24,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        style: widget.theme.textTheme.p.copyWith(
                          color: colorScheme.foreground,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: colorScheme.mutedForeground,
                      size: 18,
                    ),
                  ],
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
    final isMobile = MediaQuery.of(context).size.width <= 600;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isHovered ? colorScheme.muted : colorScheme.background,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: colorScheme.border,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.background,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: colorScheme.border,
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    widget.icon,
                    color: colorScheme.foreground,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.title,
                        style: widget.theme.textTheme.p.copyWith(
                          color: colorScheme.foreground,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.subtitle,
                        style: widget.theme.textTheme.p.copyWith(
                          color: colorScheme.mutedForeground,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: colorScheme.mutedForeground,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
