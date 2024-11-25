import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_pos/core/config/envi/envi.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Envi envi;

  setUp(() {
    dotenv.testLoad(
      fileInput: File('test/core/config/envi/.env').readAsStringSync(),
    );
    envi = Envi();
  });

  group('Envi', () {
    test('should return a string value', () {
      final result = envi.getString('STRING_VALUE');

      expect(result, 'string_value');
    });

    test('should return a bool value', () {
      final result = envi.getBool('BOOL_VALUE');

      expect(result, false);
    });

    test('should return a int value', () {
      final result = envi.getInt('INTEGER_VALUE');

      expect(result, 1);
    });

    test('should return a double value', () {
      final result = envi.getDouble('DOUBLE_VALUE');

      expect(result, 1.0);
    });

    test('should return a NULL value when variable not found', () {
      final result = envi.getStringNullable('NOT_FOUND');

      expect(result, null);
    });

    test('should throw error when variable not found', () {
      expectLater(
        () => envi.getString('NOT_FOUND'),
        throwsAssertionError,
      );
    });

    test('should throw error when parsing data type failed', () {
      expectLater(
        () => envi.getInt('STRING_VALUE'),
        throwsFormatException,
      );
    });
  });
}
