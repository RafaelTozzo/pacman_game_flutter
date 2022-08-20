import 'package:bonfire/bonfire.dart';

class CoinSpriteSheet {
  static Future<Sprite> get coin => Sprite.load(
        'map/coin.png',
        srcSize: Vector2(16, 16),
        srcPosition: Vector2(0, 0),
      );
}
