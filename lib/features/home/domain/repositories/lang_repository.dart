import 'package:dartz/dartz.dart';
import 'package:cet_e_services/core/errors/failures.dart';

abstract class LangRepository {
  Future<Either<Failure, bool>> changeLocale({required String langCode});
  Future<Either<Failure, String>> getCurrentLocale();
}
