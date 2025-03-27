import 'package:audioplayers/audioplayers.dart';

class AudioService {
  AudioService._();

  static final AudioService Audioinit = AudioService._();

  static AudioService get instance => Audioinit;

  final AudioPlayer audioPlayer = AudioPlayer();
}