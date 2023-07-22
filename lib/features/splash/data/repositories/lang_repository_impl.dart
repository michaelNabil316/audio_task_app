import 'package:task/core/errors/exceptions.dart';
import 'package:task/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:task/features/splash/data/datasources/lang_local_data_source.dart';
import 'package:task/features/splash/domain/repositories/lang_repository.dart';

class LangRepositoryImpl extends LangRepository {
  final LangLocalDataSource langLocalDataSource;

  LangRepositoryImpl({required this.langLocalDataSource});
  @override
  Future<Either<Failure, bool>> changeLocale({required String langCode}) async {
    try {
      final chashedValueLang =
          await langLocalDataSource.changeLocale(langCode: langCode);
      return Right(chashedValueLang);
    } on CasheException {
      return Left(CashFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getCurrentLocale() async {
    try {
      final langCode = await langLocalDataSource.getCurrentLocale();
      return Right(langCode!);
    } on CasheException {
      return Left(CashFailure());
    }
  }
}
