import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            //Image(image: AssetImage("assets/scroll.png")),
            Text("Hola mundo")
          ],)
    );
  }
}