import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  await Flame.device.setLandscape();
  FlameAudio.play('Back.mp3');
  Game_test game = Game_test();
  runApp(
    GameWidget(game: kDebugMode ? Game_test() : game),
  );
}
