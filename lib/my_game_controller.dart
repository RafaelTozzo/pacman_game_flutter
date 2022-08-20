import 'package:bonfire/base/game_component.dart';
import 'package:flutter/material.dart';
import 'package:teste_tecnico02_3_escribo/home_page.dart';

class MyGameController extends GameComponent {
  bool endGame = false;
  bool gameOver = false;
  final int stage;

  MyGameController(this.stage);

  @override
  void update(double dt) {
    if (checkInterval('end game', 500, dt)) {
      if (gameRef.decorations().isEmpty && !endGame) {
        endGame = true;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: const Text('Parabéns você ganhou!'),
              actions: [
                TextButton(
                    onPressed: () {
                      _goStage(stage);
                    },
                    child: const Text('Jogar novamente'))
              ],
            );
          },
        );
      }
    }

    if (checkInterval('gameover', 500, dt)) {
      if (gameRef.player?.isDead == true && !gameOver) {
        gameOver = true;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: const Text('Tente novamente!'),
              actions: [
                TextButton(
                    onPressed: () {
                      _goStage(stage);
                    },
                    child: const Text('Ok'))
              ],
            );
          },
        );
      }
    }

    super.update(dt);
  }

  void _goStage(int newStage) {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (context) {
        return HomePage(
          stage: newStage,
        );
      },
    ), (route) => false);
  }
}
