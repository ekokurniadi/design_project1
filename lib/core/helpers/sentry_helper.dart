import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

@lazySingleton
class SentryHelper {
  Future<void> sendLog(
    dynamic throwable, {
    dynamic stackTrace,
  }) async {
    await Sentry.captureException(
      throwable,
      stackTrace: stackTrace,
    );
  }
}
