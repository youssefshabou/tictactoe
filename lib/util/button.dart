import 'package:flutter/material.dart';

import 'color.dart';
class HomeButton extends StatelessWidget {
  final VoidCallback ontap;
  final   String text;

  const HomeButton({Key? key, required this.ontap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: ontap, 
      style: ElevatedButton.styleFrom(
              primary: MainColor.secondaryColor, // background
              onPrimary: Colors.white, // foreground
              minimumSize: Size(
                width, 
                50.0,
                ),
              ),
      child: Text(
              text,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                
               ),
              ),
      );
  }
}