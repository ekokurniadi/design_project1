class GlobalHelper {
  const GlobalHelper._();
  static bool isEmpty(dynamic value) {
    if (value == '' ||
        value == null ||
        value == 'null' ||
        (value == '0') ||
        value == 0) {
      return true;
    } else {
      return false;
    }
  }
}
