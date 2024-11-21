import 'dart:developer' as dev;

class Logger {
  const Logger._();
  static void log(String data) {
    dev.log(data, name: '[APP LOGGER]');
  }
}
