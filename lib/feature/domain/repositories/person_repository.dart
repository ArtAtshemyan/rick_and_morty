import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';

import '../../../core/failure/failure.dart';

abstract class PersonRepository {
  Future<Either<Failure, List<PersonEntity>>> getAllPersons(int page);
  Future<Either<Failure, List<PersonEntity>>> shearchPerson(String query);
}
