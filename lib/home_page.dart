import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:teste_tecnico02_3_escribo/decorations/coin.dart';
import 'package:teste_tecnico02_3_escribo/decorations/power_coin.dart';
import 'package:teste_tecnico02_3_escribo/ghosts/ghost.dart';
import 'package:teste_tecnico02_3_escribo/main.dart';
import 'package:teste_tecnico02_3_escribo/my_game_controller.dart';
import 'package:teste_tecnico02_3_escribo/player/player_interface.dart';
import 'package:teste_tecnico02_3_escribo/player/player_pacman.dart';

class HomePage extends StatefulWidget {
  final int stage;
  const HomePage({
    Key? key, required this.stage,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements GameListener {
  late GameController controller;
  @override
  void initState() {
    controller = GameController()..addListener(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      gameController: controller,
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(
          color: const Color.fromARGB(255, 241, 176, 55),
          size: 100,
        ),
      ),
      map: TiledWorldMap(
        'map/pacman_maze.json',
        objectsBuilder: {
          'ghost': (properties) => Ghost(properties.position),
          'coin': (properties) => Coin(properties.position),
          'powercoin': (properties) => PowerCoin(properties.position),
        },
      ),
      player: PlayerPacman(
        Vector2(7 * tileSize, 8 * tileSize),
      ),
      cameraConfig: CameraConfig(
        smoothCameraEnabled: true,
        smoothCameraSpeed: 2,
        moveOnlyMapArea: true,
        zoom: 1.5,
      ),
      showCollisionArea: false,
      overlayBuilderMap: {
        PlayerInterface.overlayKey: (context, game) => PlayerInterface(
              game: game,
            )
      },
      initialActiveOverlays: const [
        PlayerInterface.overlayKey,
      ],
      components: [
          MyGameController(widget.stage),
        ],
    );
  }
  
  @override
  void changeCountLiveEnemies(int count) {
  }
  
  @override
  void updateGame() {
  }
}
