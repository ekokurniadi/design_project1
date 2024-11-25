import 'package:flutter_pos/core/helpers/global_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GlobalHelper.isEmpty', () {
    group('String Check', () {
      test('should return true if string is null', () {
        final result = GlobalHelper.isEmpty(null);
        expect(result, true);
      });

      test('should return true if string is empty', () {
        final result = GlobalHelper.isEmpty('');
        expect(result, true);
      });

      test('should return false if string is not empty', () {
        final result = GlobalHelper.isEmpty('string value');
        expect(result, false);
      });
    });

    group('Integer Check', () {
      test('should return true if integer is null', () {
        final result = GlobalHelper.isEmpty(null);
        expect(result, true);
      });

      test('should return false if integer is not empty', () {
        final result = GlobalHelper.isEmpty(1);
        expect(result, false);
      });
    });

    group('Double Check', () {
      test('should return true if double is null', () {
        final result = GlobalHelper.isEmpty(null);
        expect(result, true);
      });

      test('should return false if double is not empty', () {
        final result = GlobalHelper.isEmpty(1.5);
        expect(result, false);
      });
    });
  });

  group('GlobalHelper.isEmptyList', () {
    test('should return true if list is null', () {
      final result = GlobalHelper.isEmptyList(null);
      expect(result, true);
    });

    test('should return true if list is empty', () {
      final result = GlobalHelper.isEmptyList([]);
      expect(result, true);
    });

    test('should return false if list is not null and not empty', () {
      final result = GlobalHelper.isEmptyList([1,2,3]);
      expect(result, false);
    });
  });
}
