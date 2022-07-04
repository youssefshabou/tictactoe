import 'package:get/get.dart';
import 'package:tictactogetx/controller/game_controller.dart';

class MyBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(GameController(),permanent: true);
  }
  
}