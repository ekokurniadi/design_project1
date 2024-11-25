import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_pos/core/helpers/internet_helper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockConnectivity connectivity;
  late InternetHelper internetHelper;

  setUp(() {
    connectivity = MockConnectivity();
    internetHelper = InternetHelper(connectivity);
  });

  group('InternetHelper', () {
    test('should return true if internet connection is mobile', () async {
      when(connectivity.checkConnectivity()).thenAnswer(
        (_) async => [ConnectivityResult.mobile],
      );

      final result = await internetHelper.isConnected;

      expect(result, true);
    });

    test('should return true if internet connection is wifi', () async {
      when(connectivity.checkConnectivity()).thenAnswer(
        (_) async => [ConnectivityResult.wifi],
      );

      final result = await internetHelper.isConnected;

      expect(result, true);
    });

    test('should return true if internet connection is ethernet', () async {
      when(connectivity.checkConnectivity()).thenAnswer(
        (_) async => [ConnectivityResult.ethernet],
      );

      final result = await internetHelper.isConnected;

      expect(result, true);
    });

    test('should return false if internet connection is none', () async {
      when(connectivity.checkConnectivity()).thenAnswer(
        (_) async => [ConnectivityResult.none],
      );

      final result = await internetHelper.isConnected;

      expect(result, false);
    });
  });
}
