import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/shared_pref.dart';
import 'more_state.dart';

class MoreCubit extends Cubit<MoreState> {
  MoreCubit() : super(MoreInitial());

  static MoreCubit get(context) => BlocProvider.of(context);
  bool langSwitcher = false;
  bool darkSwitcher = false;

  void getInitialData() {
    darkSwitcher = preferences.getBool("isDark") ?? false;
    langSwitcher = preferences.getBool("isArbic") ?? false;
    emit(GetAllDataState());
  }

  void changeLangState(status) {
    langSwitcher = status;
    emit(ChangLangState());
  }

  void changeModeState(status) {
    darkSwitcher = status;
    emit(ChangModeState());
  }
}
