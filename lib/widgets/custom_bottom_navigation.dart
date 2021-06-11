import 'package:flutter/material.dart';


class CustonBottomNavigation extends StatelessWidget {
  const CustonBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined), 
          label: "Calendario"),
          getBottonNavigation(),
          getBottonNavigation2("Usuarios", new Icon(Icons.supervised_user_circle_outlined)),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.calendar_today_outlined), 
        //   label: "Calendario"),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.calendar_today_outlined), 
        //   label: "Calendario"),
    ]);
  }
}

//dos formas de hacer métodos que retornen BottomNavigationBarItem; una clase no se puede
//porque la clase debe retornar un widget

BottomNavigationBarItem getBottonNavigation(){

  final IconData icono = Icons.pie_chart_outline_outlined;
  final String titulo = "Grafica";

  return  BottomNavigationBarItem(
          icon: Icon(icono), 
          label: titulo);
}

BottomNavigationBarItem getBottonNavigation2( String titulo, Icon icono){
  return  BottomNavigationBarItem(
          icon: icono, 
          label: titulo);
}
