import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactogetx/controller/game_controller.dart';

class WhoIsPlaying extends StatelessWidget {
  const WhoIsPlaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<GameController>(
        builder: (controller) => (Text(
          controller.getcomment(),
          style: const TextStyle(
            fontSize: 58.0,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
