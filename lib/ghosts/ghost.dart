import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico02_3_escribo/ghosts/ghost_sprite_sheet.dart';
import 'package:teste_tecnico02_3_escribo/main.dart';

class Ghost extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  bool canMove = true;

  Ghost(Vector2 position)
      : super(
          position: position,
          animation: SimpleDirectionAnimation(
            idleRight: GhostSpriteSheet.idle,
            runRight: GhostSpriteSheet.run,
          ),
          speed: 30,
          size: Vector2(
            tileSize,
            tileSize,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        enable: true,
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(12, 12),
            align: Vector2(2, 2),
          ),
        ],
      ),
    );
  }

  @override
  void update(double dt) {
    if (canMove) {
      seePlayer(
        observed: (player) {
          seeAndMoveToPlayer(
            closePlayer: (player) {
              _executeAttack();
            },
            radiusVision: 160,
            margin: 4,
          );
        },
        notObserved: () {
          runRandomMovement(
            dt,
            speed: 30,
            runOnlyVisibleInCamera: true,
            maxDistance: 500,
            minDistance: 500,
            timeKeepStopped: 0,
            useAngle: false,
          );
        },
      );
    }

    super.update(dt);
  }

  @override
  void die() {
    if (lastDirectionHorizontal == Direction.left) {
      animation?.playOnce(
        GhostSpriteSheet.idle,
        runToTheEnd: true,
        onFinish: () {
          removeFromParent();
        },
      );
    } else {
      animation?.playOnce(
        GhostSpriteSheet.idle,
        runToTheEnd: true,
        onFinish: () {
          removeFromParent();
        },
      );
    }
    super.die();
  }

  void _executeAttack() {
    simpleAttackMelee(
      damage: 100,
      size: Vector2(tileSize, tileSize),
    );
  }
}
