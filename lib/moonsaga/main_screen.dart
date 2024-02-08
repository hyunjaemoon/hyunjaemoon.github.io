import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MyGame extends FlameGame {
  // Implement
}

class MoonSagaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(game: MyGame()),
    );
  }
}
