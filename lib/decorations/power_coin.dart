import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico02_3_escribo/decorations/power_coin_sprite_sheet.dart';
import 'package:teste_tecnico02_3_escribo/player/player_pacman.dart';

class PowerCoin extends GameDecoration with Sensor {
  PowerCoin(Vector2 position)
      : super.withSprite(
          sprite: PowerCoinSpriteSheet.coin,
          position: position,
          size: Vector2(8, 8),
          
        );

  @override
  void onContact(GameComponent component) {
    if (component is PlayerPacman) {
      
      removeFromParent();
    }
  }
}


