import 'dart:developer' as dev;

class Logger {
  const Logger._();
  static void log(String data,{String? loggerName}) {
    dev.log(data, name: '[${loggerName ?? 'APP LOGGER'}]');
  }
}
