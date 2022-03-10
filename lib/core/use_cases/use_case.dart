import 'package:dartz/dartz.dart';
import '../../feature/domain/entities/person_entity.dart';
import '../error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, List<PersonEntity>>> call(Params params);
}