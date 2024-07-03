import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/feature/domain/repositories/person_repository.dart';

import '../../../core/failure/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/person_entity.dart';

class SearchPerson extends UseCases<List<PersonEntity>, SearchPersonParams> {
  final PersonRepository personRepository;

  SearchPerson({required this.personRepository});

  @override
  Future<Either<Failure, List<PersonEntity>>> call(
      SearchPersonParams query) async {
    return await personRepository.shearchPerson(query.query);
  }
}

class SearchPersonParams extends Equatable {
  final String query;

  const SearchPersonParams({required this.query});

  @override
  List<Object?> get props => [query];
}
