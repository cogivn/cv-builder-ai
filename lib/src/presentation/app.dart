import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../generated/l10n.dart';
import '../core/config/di.dart';
import 'router/app_router.dart';
import 'theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    final talker = getIt<Talker>();

    return TalkerWrapper(
      talker: talker,
      options: const TalkerWrapperOptions(
        enableErrorAlerts: true,
      ),
      child: ShadApp.materialRouter(
        routerConfig: appRouter.config(),
        title: 'CV Builder AI',
        debugShowCheckedModeBanner: false,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
