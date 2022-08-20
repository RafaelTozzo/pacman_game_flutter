import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico02_3_escribo/main.dart';
import 'package:teste_tecnico02_3_escribo/player/player_sprite_sheet.dart';

class PlayerPacman extends SimplePlayer with ObjectCollision {
  PlayerPacman(Vector2 position)
      : super(
          position: position,
          animation: SimpleDirectionAnimation(
            runUp: PlayerPacmanSpriteSheet.heroRunTop,
            runLeft: PlayerPacmanSpriteSheet.heroRunLeft,
            runDown: PlayerPacmanSpriteSheet.heroRunBottom,
            runRight: PlayerPacmanSpriteSheet.heroRunRight,
            idleRight: PlayerPacmanSpriteSheet.heroIdleRight,
            idleDown: PlayerPacmanSpriteSheet.heroIdleBottom,
            idleUp: PlayerPacmanSpriteSheet.heroIdleTop,
            idleLeft: PlayerPacmanSpriteSheet.heroRunLeft,
          ),
          speed: 40,
          life: 10,
          size: Vector2(
            tileSize,
            tileSize,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        enable: true,
        collisions: [
          CollisionArea.circle(
            radius: 6,
            align: Vector2(2, 2),
          ),
        ],
      ),
    );
  }

  @override
  void die() {
    removeFromParent();
    super.die();
  }
}

