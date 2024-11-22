import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_pos/core/module/utilities_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../mocks.mocks.dart';

void main() {
  group('UtilitiesModule', () {
    late TestUtilitiesModule utilitiesModule;
    late MockConnectivity mockConnectivity;

    setUp(() {
      utilitiesModule = TestUtilitiesModule();
      mockConnectivity = MockConnectivity();
    });

    test('should provide an instance of Connectivity', () {
      // Act
      final connectivity = utilitiesModule.connectivity;

      // Assert
      expect(connectivity, isA<Connectivity>());
    });

    test('should return [ConnectivityResult.wifi]', () async {
      // Arrange

      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.wifi]);

      // Act
      final result = await mockConnectivity.checkConnectivity();

      // Assert
      expect(result, [ConnectivityResult.wifi]);
      verify(mockConnectivity.checkConnectivity()).called(1);
    });
  });
}

class TestUtilitiesModule extends UtilitiesModule {}
