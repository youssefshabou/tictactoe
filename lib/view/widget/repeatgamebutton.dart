import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactogetx/controller/game_controller.dart';

class RepeatGameButton extends GetView<GameController> {
  const RepeatGameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        controller.resetgame();
      },
      icon: const Icon(
        Icons.replay,
        color: Colors.white,
      ),
      label: const Text(
        'Repeat the game',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
    );
  }
}
