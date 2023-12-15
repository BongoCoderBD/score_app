import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen/HomeScreen.dart';

void main(){
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Score App",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}