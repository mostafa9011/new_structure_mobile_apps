import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      print('onCreate -- ${bloc.runtimeType}');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      try {
        print(
          '\nonChange -- ${bloc.runtimeType}:\n'
          'Current state: ${change.currentState.status}\n'
          'Next state: ${change.nextState.status}\n\n',
        );
      } catch (_) {
        // If error occurs this means this cubit' state class does not follow the new structure
        // and does not have a 'status' property.
        print(
          '\nonChange -- ${bloc.runtimeType}:\n'
          'Current state: ${change.currentState}\n'
          'Next state: ${change.nextState}\n\n',
        );
      }
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      print('onError -- ${bloc.runtimeType}, $error');
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      print('onClose -- ${bloc.runtimeType}');
    }
  }
}
