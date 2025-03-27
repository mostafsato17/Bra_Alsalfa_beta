import 'package:audioplayers/audioplayers.dart';

class AudioService {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool _isSoundOn = true;

  bool get isSoundOn => _isSoundOn;

  void toggleSound() {
    _isSoundOn = !_isSoundOn;
  }

  Future<void> playButtonSound() async {
     final AudioPlayer audioPlayer = AudioPlayer();
    if (_isSoundOn) {
      try {
        print("Playing sound...");
       audioPlayer.play(AssetSource('audio/yesking.mp3'));
        print("Sound played successfully.");
      } catch (e) {
        print("Error playing sound: $e");
      }
    } else {
      print("Sound is turned off.");
    }
  }
}

