import 'package:task/Model/audio_player_model.dart';

import '../repositories/home/home_repository.dart';

class HomeViewModel {
  HomeRepository? homeRepository;
  HomeViewModel({this.homeRepository});

  Future<List<AudioModel>> fetchAllAudios() async {
    List<AudioModel> audios = await homeRepository!.getAllAudio();
    return audios.toList();
  }
}
