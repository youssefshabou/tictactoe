import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactogetx/controller/game_controller.dart';
import '../screen/home.dart';

class MenuButton extends GetView<GameController> {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 250),
      child: ElevatedButton.icon(
        onPressed: () {
          Get.off(() => const Home());
        },
        icon: const Icon(Icons.menu),
        label: const Text("Menu"),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
      ),
    );
  }
}
