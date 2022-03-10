import 'package:clean_rick_and_morti/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../core/error/failure.dart';
import '../entities/person_entity.dart';
import '../repositories/person_repository.dart';

class SearchPerson extends UseCase<List<PersonEntity>, SearchPersonParams>{
  final PersonRepository personRepository;
  SearchPerson({required this.personRepository});

  @override
  Future<Either<Failure, List<PersonEntity>>> call(SearchPersonParams params) async {
    return await personRepository.searchPerson(params.query);
  }
}

class SearchPersonParams extends Equatable {

  final String query;
  const SearchPersonParams({required this.query});

  @override
  List<Object?> get props => [query];

}