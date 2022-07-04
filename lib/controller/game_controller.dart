
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GameController extends GetxController{
  static const bordlength=9;
  static const blocksize=100.0;
  List<String> bord=[' ',' ',' ',' ',' ',' ',' ',' ',' '];
  List<String> singelplayerbord=[' ',' ',' ',' ',' ',' ',' ',' ',' '];
  List<String> multiplayerbord=[' ',' ',' ',' ',' ',' ',' ',' ',' '];
  String lastplay='X';
  String comment='X is playing';

  
  void makemove(int index){
    if(comment=='$lastplay is playing'){
      if(bord[index]==' '){
      bord[index]=lastplay;
      (lastplay=='X'&& bord.contains(' '))? lastplay='O':lastplay='X';
      comment=gameover(lastplay, bord);
      }
    update();
    }
    
  } 
  String getelement(int index){
    return bord[index];
  }
  String getcomment(){
    return comment;
  }
  void resetgame(){
    bord=[' ',' ',' ',' ',' ',' ',' ',' ',' '];
    comment='X is playing';
    lastplay='X';
    update();
  }
  static bool whowins(String player, List <String> bord){
    if((bord[0]==player) && (bord[1]==player) && (bord[2]==player)){
      return true;
    }
    if((bord[3]==player) && (bord[4]==player) && (bord[5]==player)){
      return true;
    }
    if((bord[6]==player) && (bord[7]==player) && (bord[8]==player)){
      return true;
    }
    if((bord[0]==player) && (bord[3]==player) && (bord[6]==player)){
      return true;
    }
    if((bord[1]==player) && (bord[4]==player) && (bord[7]==player)){
      return true;
    }
    if((bord[2]==player) && (bord[5]==player) && (bord[8]==player)){
      return true;
    }
    if((bord[0]==player) && (bord[4]==player) && (bord[8]==player)){
      return true;
    }
    if((bord[2]==player) && (bord[4]==player) && (bord[6]==player)){
      return true;
    }
    return false;
  }
  static String gameover(String player, List <String> bord){
    if ((whowins('X', bord))){
      return 'X wins';
    }
    else if ((whowins('O', bord))){
      return 'O wins';
    }
    else{
      if(bord.contains(' ')==false){
        return 'draw';

      }
    }
    return '$player is playing';
  }

  Color getcolor(index){
    if (bord[index]=='X'){
      return Colors.blue;
    }
    else{
      return Colors.pink;
    }

  }

}