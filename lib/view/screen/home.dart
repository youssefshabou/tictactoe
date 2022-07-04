import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactogetx/util/button.dart';
import 'package:tictactogetx/util/color.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HomeButton(ontap: (){
                Get.toNamed('/gamescreen');
              }, text: 'play a game'),
            ],
          ),
      ),
    );
  }
}

