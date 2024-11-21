import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class InternetHelper {
  const InternetHelper(this._connectivity);
  final Connectivity _connectivity;

   Future<bool> get isConnected async {
    final connectivityResult = await (_connectivity.checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.ethernet)) {
      return true;
    }
    return false;
  }
}