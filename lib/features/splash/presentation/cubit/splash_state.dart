part of 'splash_cubit.dart';

enum SplashStatus {
  initial,
  loading,
  success,
  failure,
}

@immutable
class SplashState {
  final SplashStatus status;
  final String? message;

  const SplashState({
    required this.status,
    this.message,
  });

  SplashState copyWith({
    required SplashStatus status,
    String? message,
  }) {
    return SplashState(
      status: status,
      message: message ?? this.message,
    );
  }

  bool get isLoading => status == SplashStatus.loading;
  bool get isSuccess => status == SplashStatus.success;
  bool get isFailure => status == SplashStatus.failure;
}
