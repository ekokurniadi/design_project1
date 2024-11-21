import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocEventLogger extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    log('$event', name: 'onEvent(${bloc.runtimeType})');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    log(' $error, $stackTrace)', name: 'onError(${bloc.runtimeType})');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log(' $transition', name: 'onTransition(${bloc.runtimeType})');
  }
}