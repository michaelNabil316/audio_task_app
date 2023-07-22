import 'package:task/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:task/core/usecases/usecase.dart';
import 'package:task/features/splash/domain/repositories/lang_repository.dart';

class ChangeLocaleUseCase implements UseCase<bool, String> {
  final LangRepository langRepository;

  ChangeLocaleUseCase({required this.langRepository});
  @override
  Future<Either<Failure, bool>> call(String langCode) async {
    return await langRepository.changeLocale(langCode: langCode);
  }
}
