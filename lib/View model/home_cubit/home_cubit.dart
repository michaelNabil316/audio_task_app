import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Model/audio_player_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
//  AudioRepository audioRepository = AudioRepository();
  List<AudioModel> availableAudios = [];
  bool isLoading = false;
  bool isErrorBorder = false;

  getAllGovernments() async {
    changeLodingState(true);
    // final response = await audioRepository.getAllGovernments();
    // log("getAllGovernments response> $response");
    // if (response['success'] == true) {
    //   availableAudios = [];
    //   for (var gov in response['Values']['data']) {
    //     availableAudios.add(AudioModel.fromJson(gov));
    //   }
    // }

    emit(GetAllGovernmentsState());
    changeLodingState(false);
  }

  // changeSelectedGovernment(value) {
  //   selectedGovernmentId = value;
  //   changeBorderError(false);
  //   for (Government v in availableGovernments) {
  //     if (selectedGovernmentId == v.id) {
  //       selectedGovernmentName = "isEnglish".tr == "isEnglish"
  //           ? "${v.nameInEnglish}"
  //           : "${v.nameInArabic}";
  //     }
  //   }
  //   emit(ChangeGovState());
  // }

  // Future<Map<String, dynamic>> addNewGovernament({
  //   required String englishName,
  //   required String arabicName,
  // }) async {
  //   changeLoginBtn(true);
  //   final response = await governmentsRepository.addNew(
  //       englishName: englishName, arabicName: arabicName);

  //   changeLoginBtn(false);
  //   return response;
  // }

  // Future<Map<String, dynamic>> deleteGovernament() async {
  //   changeLoginBtn(true);
  //   final response =
  //       await governmentsRepository.deleteGov(id: selectedGovernmentId!);
  //   changeLoginBtn(false);
  //   return response;
  // }

  void changeLodingState(status) {
    isLoading = status;
    emit(ChangLodingBtnState());
  }

  // void changeBorderError(status) {
  //   isErrorBorder = status;
  //   emit(ChangBorderErrorState());
  // }

  // void clearSelectedGov() {
  //   selectedGovernmentId = null;
  //   emit(ChangeGovState());
  // }
}
