import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){

    //la siguiente linea cambia el color de los iconos en la parte superior del celular (cantidad de bateria, wifi etc)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      initialRoute: "home_screen",
      routes: {
        //El guion bajo significa que no se va a usar el argumento, en este caso, el build context
        "basic_design"  : (_) => BasicDesignScreen(),
        "scroll_screen" : (_) => ScrollScreen(),
        "home_screen"   : (_)=> HomeScreen()
      },     
    );
  }
}