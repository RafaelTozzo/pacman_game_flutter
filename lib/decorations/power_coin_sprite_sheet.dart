import 'package:bonfire/bonfire.dart';

class PowerCoinSpriteSheet {
  static Future<Sprite> get coin => Sprite.load(
        'map/power_coin.png',
        srcSize: Vector2(16, 16),
        srcPosition: Vector2(0, 0),
      );
}
