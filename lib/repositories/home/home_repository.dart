import 'package:task/Model/audio_player_model.dart';

abstract class HomeRepository {
  Future<List<AudioModel>> getAllAudio();
}
