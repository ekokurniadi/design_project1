import 'package:auto_route/auto_route.dart';
import 'package:flutter_pos/core/router/ronpos_routers.dart';
import 'package:flutter_pos/core/router/sentinel_routers.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/presentations/pages/ronpos_dashboard_page.dart';
import 'package:flutter_pos/modules/ronpos/features/products/presentations/pages/products_page.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/presentations/pages/user_management_page.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/presentations/pages/sentinel_dashboard_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route',)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
       ...ronposRoutes,
       ...sentinelRoutes,
      ];
}