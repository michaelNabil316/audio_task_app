import 'package:flutter/material.dart';
import '../../Model/audio_player_model.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../View model/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AudioPlayer _audioPlayer;
  var homeViewModel = HomeViewModel();

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    // _cacheAudio("widget.audioUrl"); // Cache the audio file before playing
  }

  Future<void> _cacheAudio(String audioUrl) async {
    final cacheManager = DefaultCacheManager();
    await cacheManager.downloadFile(audioUrl);
  }

  Future<void> _playAudio(String audioUrl) async {
    try {
      final cacheManager = DefaultCacheManager();
      FileInfo? fileInfo = await cacheManager.getFileFromCache(audioUrl);

      if (fileInfo != null && fileInfo.file != null) {
        // Audio file exists in the cache, play it
        await _audioPlayer.play(UrlSource(fileInfo.file.path));
      } else {
        // File not found in cache, download and play
        await _cacheAudio(audioUrl);
        await _audioPlayer.play(UrlSource(audioUrl));
      }
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Center(
        child: FutureBuilder<List<AudioModel>>(
          future: homeViewModel.fetchAllAudios(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              var audios = snapshot.data;
              return ListView.builder(
                itemCount: audios?.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(audios?[index].audioUrl ?? ""),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
