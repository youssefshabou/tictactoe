import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactogetx/controller/game_controller.dart';
import '../../util/color.dart';

class GameBoard extends GetView<GameController> {
  const GameBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bordwidth = MediaQuery.of(context).size.width;
    return Container(
      width: bordwidth,
      height: bordwidth,
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        childAspectRatio: 1.0,
        primary: false,
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        crossAxisCount: GameController.bordlength ~/ 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: List.generate(GameController.bordlength, (index) {
          return InkWell(
            onTap: () {
              controller.makemove(index);
            },
            child: Container(
              width: GameController.blocksize,
              height: GameController.blocksize,
              decoration: BoxDecoration(
                  color: MainColor.secondaryColor,
                  borderRadius: BorderRadius.circular(16.0)),
              child: Center(
                child: GetBuilder<GameController>(
                  builder: (controller) => (Text(
                    controller.getelement(index),
                    style: TextStyle(
                      fontSize: 58.0,
                      color: controller.getcolor(index),
                    ),
                  )),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
