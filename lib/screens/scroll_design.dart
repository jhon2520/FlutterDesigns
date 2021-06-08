import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
             //control del gradiente del color
             stops: [0.5,0.5],
             colors: [
             Color(0xff5EE8C5),
             Color(0xff30BAD6)
           ]) ),
          child: PageView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
            Page1(),
            Page2(),
          ]),
        ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //background
        Backgorund(),
        //MainConntent
        MainContent()
      ],
    );
  }
}

class Backgorund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage("assets/scroll.png")));
  }
}

class MainContent extends StatelessWidget {
  final textStyle =
      TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "11°",
            style: this.textStyle,
          ),
          Text(
            "Miercoles",
            style: this.textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Bienvenido",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Color(0xff0098Fa), 
              shape: StadiumBorder(),
              shadowColor: Colors.blueGrey[600],
              elevation: 25.0),
        ),
      ),
    );
  }
}
