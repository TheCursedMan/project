import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'widget/ChooseBin.dart';
import 'mingame_home.dart';
import 'product1.dart';


void main() {
  debugPaintSizeEnabled = false; //Rendering Containers
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) : super (key : key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Minigame',
      initialRoute: '/minigame_home',
      routes: {
        '/minigame_home' : (BuildContext context) =>  MinigameHome(),
        '/' : (BuildContext context) =>  product(),
      },
    );
  }
}