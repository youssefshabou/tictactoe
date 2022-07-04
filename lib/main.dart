import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactogetx/binding/mybinding.dart';
import 'package:tictactogetx/view/screen/gamescreen.dart';
import 'package:tictactogetx/view/screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';


SharedPreferences? sharedpref;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: MyBinding(),
      getPages: [
        GetPage(name: "/", page:()=> const Home(),
        ),
        GetPage(name: "/gamescreen", page:()=> GameScreen() ),
      ],
    );
  }
}


