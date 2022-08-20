import 'package:bonfire/bonfire.dart';

class PlayerPacmanSpriteSheet {
  static Future<SpriteAnimation> get heroRunTop => SpriteAnimation.load(
        'pacman.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 16),
        ),
      );
  static Future<SpriteAnimation> get heroRunBottom => SpriteAnimation.load(
        'pacman.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get heroRunRight => SpriteAnimation.load(
        'pacman.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 48),
        ),
      );
  static Future<SpriteAnimation> get heroRunLeft => SpriteAnimation.load(
        'pacman.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 32),
        ),
      );
  static Future<SpriteAnimation> get heroIdleTop => SpriteAnimation.load(
        'pacman.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 16),
        ),
      );
  static Future<SpriteAnimation> get heroIdleBottom => SpriteAnimation.load(
        'pacman.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get heroIdleRight => SpriteAnimation.load(
        'pacman.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 48),
        ),
      );
  static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
        'pacman.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(32, 32),
        ),
      );
}
