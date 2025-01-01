import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../core/l10n/messages.dart';

class AccountBottomSheet extends StatelessWidget {
  final String name;
  final String email;
  final String avatarUrl;
  final VoidCallback? onManageAccount;
  final VoidCallback? onBackupSettings;
  final VoidCallback? onManageStorage;
  final VoidCallback? onSettings;
  final VoidCallback? onHelp;

  const AccountBottomSheet({
    super.key,
    required this.name,
    required this.email,
    required this.avatarUrl,
    this.onManageAccount,
    this.onBackupSettings,
    this.onManageStorage,
    this.onSettings,
    this.onHelp,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _AccountHeader(
              name: name,
              email: email,
              avatarUrl: avatarUrl,
            ),
            const SizedBox(height: 16),
            _ManageAccountButton(
              onPressed: onManageAccount,
            ),
            const SizedBox(height: 24),
            _AccountMenu(
              onBackupSettings: onBackupSettings,
              onManageStorage: onManageStorage,
              onSettings: onSettings,
              onHelp: onHelp,
            ),
            const SizedBox(height: 24),
            const _BottomLinks(),
          ],
        ),
      ),
    );
  }
}

class _AccountHeader extends StatelessWidget {
  final String name;
  final String email;
  final String avatarUrl;

  const _AccountHeader({
    required this.name,
    required this.email,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: theme.colorScheme.muted,
          child: ClipOval(
            child: Image.network(
              avatarUrl,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.person_outline,
                  color: theme.colorScheme.mutedForeground,
                );
              },
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: theme.textTheme.large.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                email,
                style: theme.textTheme.small.copyWith(
                  color: theme.colorScheme.foreground.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Icon(
          Icons.keyboard_arrow_down,
          color: theme.colorScheme.foreground,
        ),
      ],
    );
  }
}

class _ManageAccountButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const _ManageAccountButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    final messages = context.s;
    return ShadButton.outline(
      onPressed: onPressed,
      child: Text(messages.accountManageAccount),
    );
  }
}

class _AccountMenu extends StatelessWidget {
  final VoidCallback? onBackupSettings;
  final VoidCallback? onManageStorage;
  final VoidCallback? onSettings;
  final VoidCallback? onHelp;

  const _AccountMenu({
    this.onBackupSettings,
    this.onManageStorage,
    this.onSettings,
    this.onHelp,
  });

  @override
  Widget build(BuildContext context) {
    final messages = context.s;
    return Column(
      children: [
        _AccountMenuItem(
          icon: Icons.settings_outlined,
          title: messages.accountSettings,
          onTap: onSettings,
        ),
        const SizedBox(height: 16),
        _AccountMenuItem(
          icon: Icons.help_outline,
          title: messages.accountHelpAndFeedback,
          onTap: onHelp,
        ),
      ],
    );
  }
}

class _BottomLinks extends StatelessWidget {
  const _BottomLinks();

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final messages = context.s;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            messages.accountPrivacyPolicy,
            style: theme.textTheme.small.copyWith(
              color: theme.colorScheme.foreground.withValues(alpha: 0.7),
            ),
          ),
        ),
        Text(
          '•',
          style: TextStyle(
            color: theme.colorScheme.foreground.withValues(alpha: 0.7),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            messages.accountTermsOfService,
            style: theme.textTheme.small.copyWith(
              color: theme.colorScheme.foreground.withValues(alpha: 0.7),
            ),
          ),
        ),
      ],
    );
  }
}

class _AccountMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  const _AccountMenuItem({
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(
              icon,
              color: theme.colorScheme.foreground,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.large,
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle!,
                      style: theme.textTheme.small.copyWith(
                        color: theme.colorScheme.foreground.withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
