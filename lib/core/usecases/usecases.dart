import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/failure/failure.dart';

abstract class UseCases<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
