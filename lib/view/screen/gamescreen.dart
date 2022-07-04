import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactogetx/controller/game_controller.dart';
import 'package:tictactogetx/util/color.dart';
import 'package:tictactogetx/view/widget/board.dart';
import 'package:tictactogetx/view/widget/menubutton.dart';
import 'package:tictactogetx/view/widget/repeatgamebutton.dart';
import 'package:tictactogetx/view/widget/whoisplaying.dart';

// ignore: must_be_immutable
class GameScreen extends StatelessWidget {
  GameScreen({Key? key}) : super(key: key);
  GameController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
           MenuButton(),
            SizedBox(
              height: 20.0,
            ),
            WhoIsPlaying(),
            SizedBox(height: 20.0),
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: GameBoard(),
            ),
            RepeatGameButton(),
          ],
        ),
      ),
    );
  }
}
