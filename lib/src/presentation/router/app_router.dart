import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../pages/cv/cv_list_page.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CVListRoute.page, initial: true),
      ];
}
