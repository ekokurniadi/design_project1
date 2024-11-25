import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Failures', () {
    test('ServerFailure should have correct errorMessage and props', () {
      const errorMessage = 'Server error occurred';
      final failure = ServerFailure(errorMessage: errorMessage);

      expect(failure.errorMessage, errorMessage);
      expect(failure.props, [errorMessage]);
    });

    test('DatabaseFailure should have correct errorMessage and props', () {
      const errorMessage = 'Database error occurred';
      final failure = DatabaseFailure(errorMessage: errorMessage);

      expect(failure.errorMessage, errorMessage);
      expect(failure.props, [errorMessage]);
    });

    test('UnexpectedFailure should have correct errorMessage and props', () {
      const errorMessage = 'Unexpected error occurred';
      final failure = UnexpectedFailure(errorMessage: errorMessage);

      expect(failure.errorMessage, errorMessage);
      expect(failure.props, [errorMessage]);
    });

    test('Failures should be equatable', () {
      const errorMessage1 = 'Error 1';
      const errorMessage2 = 'Error 2';

      final failure1 = ServerFailure(errorMessage: errorMessage1);
      final failure2 = ServerFailure(errorMessage: errorMessage1);
      final failure3 = ServerFailure(errorMessage: errorMessage2);

      expect(failure1 == failure2, isTrue);
      expect(failure1 == failure3, isFalse);
    });
  });
}
