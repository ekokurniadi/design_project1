// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ProductsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductsPage(),
      );
    },
    RonposDashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RonposDashboardPage(),
      );
    },
    SentinelDashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SentinelDashboardPage(),
      );
    },
    UserManagementRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserManagementPage(),
      );
    },
  };
}

/// generated route for
/// [ProductsPage]
class ProductsRoute extends PageRouteInfo<void> {
  const ProductsRoute({List<PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RonposDashboardPage]
class RonposDashboardRoute extends PageRouteInfo<void> {
  const RonposDashboardRoute({List<PageRouteInfo>? children})
      : super(
          RonposDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'RonposDashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SentinelDashboardPage]
class SentinelDashboardRoute extends PageRouteInfo<void> {
  const SentinelDashboardRoute({List<PageRouteInfo>? children})
      : super(
          SentinelDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'SentinelDashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserManagementPage]
class UserManagementRoute extends PageRouteInfo<void> {
  const UserManagementRoute({List<PageRouteInfo>? children})
      : super(
          UserManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserManagementRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
