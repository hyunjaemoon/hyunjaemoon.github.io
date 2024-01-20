import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class MyGame extends FlameGame {
  late final Player player;
  late final TextComponent dialogueBox;
  late final RectangleComponent dialogueBackground;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    // Player setup
    player = Player()
      ..size = Vector2(50, 50)
      ..position = size / 2;
    add(player);

    // Dialogue box background
    dialogueBackground = RectangleComponent()
      ..size = Vector2(size.x - 40, 100)
      ..position = Vector2(20, size.y - 120)
      ..paint = Paint()
      ..setColor(Colors.white); // Semi-transparent white
    add(dialogueBackground);

    // Dialogue box
    dialogueBox = TextComponent(
      text: "Hello, welcome to your adventure!",
      position: Vector2(40, size.y - 100),
      textRenderer: TextPaint(
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
    add(dialogueBox);
  }

  void movePlayer(Offset tapPosition) {
    // Set the target position for the player
    final Vector2 targetPosition = Vector2(tapPosition.dx, tapPosition.dy);
    player.targetPosition = targetPosition;
  }
}

class Player extends PositionComponent {
  late Paint paint;
  Vector2? targetPosition;
  double speed = 300; // Speed in units per second

  @override
  Future<void> onLoad() async {
    paint = Paint()..color = Colors.blue;
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (targetPosition != null) {
      // Move the player towards the target position
      position =
          position + (targetPosition! - position).normalized() * speed * dt;

      // Check if the player has reached the target position
      if ((targetPosition! - position).length < speed * dt) {
        position = targetPosition!;
        targetPosition = null;
      }
    }
  }

  @override
  void render(Canvas canvas) {
    canvas.drawRect(size.toRect(), paint);
  }
}

class MoonSagaWidget extends StatelessWidget {
  final MyGame _game = MyGame();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flame Game',
      home: Scaffold(
        body: GestureDetector(
          onTapDown: (TapDownDetails details) {
            // Convert tap position to game coordinates
            _game.movePlayer(details.localPosition);
          },
          child: GameWidget(game: _game),
        ),
      ),
    );
  }
}
