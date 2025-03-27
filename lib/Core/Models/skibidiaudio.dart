import 'package:audioplayers/audioplayers.dart';

Future<void> skibidi_audio(String path) async {
  final AudioPlayer audioPlayer = AudioPlayer();
  await audioPlayer.play(AssetSource('audio/$path')); 
}