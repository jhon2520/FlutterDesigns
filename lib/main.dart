
import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      initialRoute: "scroll_screen",
      routes: {
        //El guion bajo significa que no se va a usar el argumento, en este caso, el build context
        "basic_design" : (_) => BasicDesignScreen(),
        "scroll_screen" : (_) => ScrollScreen()
      },     
    );
  }
}