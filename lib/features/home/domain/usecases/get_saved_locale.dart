import 'package:cet_e_services/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:cet_e_services/core/usecases/usecase.dart';
import 'package:cet_e_services/features/splash/domain/repositories/lang_repository.dart';

class GetSavedLocaleUseCase implements UseCase<String, NoParams> {
  final LangRepository langRepository;

  GetSavedLocaleUseCase({required this.langRepository});

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await langRepository.getCurrentLocale();
  }
}
