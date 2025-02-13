abstract class Failure {
  final String message;

  const Failure({required this.message});
}

/// This class is used to return failure
/// when error occured with api (dio)
class ServerFailure extends Failure {
  final int statusCode;

  const ServerFailure({
    required super.message,
    required this.statusCode,
  });
}

/// This class is used to return firebase failure
class FirebaseFailure extends Failure {
  const FirebaseFailure({
    required super.message,
  });
}

/// This class is used to return cache failure
class CacheFailure extends Failure {
  const CacheFailure({
    required super.message,
  });
}
