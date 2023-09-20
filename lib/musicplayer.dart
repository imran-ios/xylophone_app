import 'package:audioplayers/audioplayers.dart';

final class MusicPlayer {
  static void playSound(String soundName) {
    final player = AudioPlayer();
    player.play(
      AssetSource(soundName),
    );
  }
}
