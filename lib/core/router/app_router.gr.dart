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
    RonposDashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RonposDashboardPage(),
      );
    }
  };
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
