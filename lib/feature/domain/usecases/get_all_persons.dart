import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/feature/domain/repositories/person_repository.dart';

import '../../../core/failure/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/person_entity.dart';

class GetAllPersons extends UseCases<List<PersonEntity>, PagePersonParams> {
  final PersonRepository personRepository;

  GetAllPersons({required this.personRepository});

  @override
  Future<Either<Failure, List<PersonEntity>>> call(
      PagePersonParams params) async {
    return await personRepository.getAllPersons(params.page);
  }
}

class PagePersonParams extends Equatable {
  final int page;

  const PagePersonParams({required this.page});

  @override
  List<Object?> get props => [page];
}
