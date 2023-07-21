import 'package:cet_e_services/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:cet_e_services/core/usecases/usecase.dart';
import 'package:cet_e_services/features/splash/domain/repositories/lang_repository.dart';

class ChangeLocaleUseCase implements UseCase<bool, String> {
  final LangRepository langRepository;

  ChangeLocaleUseCase({required this.langRepository});
  @override
  Future<Either<Failure, bool>> call(String langCode) async {
    return await langRepository.changeLocale(langCode: langCode);
  }
}
