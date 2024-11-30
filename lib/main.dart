import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_pos/app.dart';
import 'package:flutter_pos/common.dart';
import 'package:flutter_pos/core/config/database/realm_database.dart';
import 'package:flutter_pos/core/config/envi/envi.dart';
import 'package:flutter_pos/core/helpers/locale_helper.dart';
import 'package:flutter_pos/core/styles/breakpoints.dart';
import 'package:flutter_pos/core/styles/theme.dart';
import 'package:flutter_pos/gen/strings.g.dart';
import 'package:flutter_pos/injector.dart';
import 'package:flutter_pos/inspector.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realm/realm.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      LocaleSettings.useDeviceLocale();
      await App.init();

      await SentryFlutter.init(
        (option) {
          option.dsn = getIt<Envi>().getString('SENTRY_DSN');
          option.attachScreenshot = true;
          option.captureFailedRequests = true;
        },
        appRunner: () => runApp(
          TranslationProvider(
            child: const SentryWidget(
              child: MyApp(),
            ),
          ),
        ),
      );
    },
    (exception, stackTrace) async {
      await Sentry.captureException(exception, stackTrace: stackTrace);
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    getIt<RealmDatabase>().dispose();
    super.dispose();
  }

  @override
  void initState() {
    LocaleHelper.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.sizeOf(context).width,
        MediaQuery.sizeOf(context).height,
      ),
      builder: (context, child) {
        final scale = 126 / MediaQuery.of(context).size.shortestSide;
        return MaterialApp.router(
          locale: TranslationProvider.of(context).flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          builder: (context, widget) {
            final childWithResponsive = ResponsiveWrapper.builder(
              maxWidth: MediaQuery.sizeOf(context).width,
              minWidth: 360,
              ClampingScrollWrapper(child: widget ?? const SizedBox()),
              background: const ColoredBox(
                color: Color(0xFFF5F5F5),
              ),
              breakpoints: breakpoints(scale),
            );

            if (kDebugMode) {
              return InspectorScaffold(
                navigatorKey: navigatorKey,
                realmDatabase: getIt<Realm>(),
                child: childWithResponsive,
              );
            }

            return childWithResponsive;
          },
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          theme: AppTheme.theme,
        );
      },
    );
  }
}
