import 'package:task/repositories/home/home_repository.dart';
import 'package:dio/dio.dart';

import '../../Model/audio_player_model.dart';
import '../../core/api/end_points.dart';

class HomeAPI extends HomeRepository {
  @override
  Future<List<AudioModel>> getAllAudio() async {
    List<AudioModel> audios = [];
    try {
      var response = await Dio().get(EndPoints.audioUrl);
      var list = response.data as List;
      audios = list.map((audio) => AudioModel.fromJson(audio)).toList();
    } catch (exception) {
      print(exception);
    }
    print(audios);
    return audios;
  }
}
