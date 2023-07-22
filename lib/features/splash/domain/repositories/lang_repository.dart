import 'package:dartz/dartz.dart';
import 'package:task/core/errors/failures.dart';

abstract class LangRepository {
  Future<Either<Failure, bool>> changeLocale({required String langCode});
  Future<Either<Failure, String>> getCurrentLocale();
}
