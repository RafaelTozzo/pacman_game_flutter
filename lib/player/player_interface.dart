import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

class PlayerInterface extends StatefulWidget {
  static const overlayKey = 'playerInterface';

  final BonfireGame game;
  const PlayerInterface({Key? key, required this.game}) : super(key: key);

  @override
  PlayerInterfaceState createState() => PlayerInterfaceState();
}

class PlayerInterfaceState extends State<PlayerInterface> {
  double score = 0;

  final double widthMax = 100;
  double widthCurrent = 100;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: widthMax,
                  height: 30,
                  child: const Text(
                    'Score:',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: Color.fromARGB(255, 134, 252, 79),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
