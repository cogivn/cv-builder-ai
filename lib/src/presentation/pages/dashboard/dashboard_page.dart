import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../widgets/account_bottom_sheet.dart';
import 'components/quick_actions.dart';
import 'components/resume_section.dart';
import 'components/feature_carousel.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'CV.AI',
          style: theme.textTheme.h4.copyWith(
            color: theme.colorScheme.foreground,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                showDragHandle: true,
                backgroundColor: theme.colorScheme.background,
                builder: (context) => AccountBottomSheet(
                  name: 'John Doe',
                  email: 'john.doe@example.com',
                  avatarUrl: 'https://i.pravatar.cc/300',
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
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1000) {
            return SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const FeatureCarousel(),
                  const SizedBox(height: 48),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: QuickActions(),
                        ),
                        const SizedBox(width: 48),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: const [
                              ResumeSection(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            );
          }

          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: const [
                SizedBox(height: 40),
                FeatureCarousel(),
                SizedBox(height: 48),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: QuickActions(),
                ),
                SizedBox(height: 48),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ResumeSection(),
                ),
                SizedBox(height: 48),
              ],
            ),
          );
        },
      ),
    );
  }
}
