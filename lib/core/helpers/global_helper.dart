sealed class GlobalHelper {
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

  static bool isEmptyList(List<dynamic>? value) {
    if (value == null) {
      return true;
    } else {
      if (value.isEmpty) {
        return true;
      }
      return false;
    }
  }
}
