import 'package:dartz/dartz.dart';
import 'package:new_structure/core/errors/failures.dart';

abstract class BaseUsecase<In, Out> {
  Future<Either<Failure, Out>> execute(In parameters);
}
