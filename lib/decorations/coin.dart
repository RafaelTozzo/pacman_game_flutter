import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico02_3_escribo/decorations/coin_sprite_sheet.dart';
import 'package:teste_tecnico02_3_escribo/player/player_pacman.dart';

class Coin extends GameDecoration with Sensor {
  Coin(Vector2 position)
      : super.withSprite(
          sprite: CoinSpriteSheet.coin,
          position: position,
          size: Vector2(10, 10),
          
        );

  @override
  void onContact(GameComponent component) {
    if (component is PlayerPacman) {
      removeFromParent();
    }

    
  }
}
