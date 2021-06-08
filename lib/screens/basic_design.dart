import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Column(
        children: [
          //imagen superior
          Image(image: AssetImage("assets/landscape.jpg"),),
          //titulo
          Tittle(),
          //Button section
          ButtonSection(),
          //Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Text("Incididunt sit deserunt magna est labore ipsum aliquip nisi. Do occaecat labore aliquip est elit. Ipsum excepteur magna ad cupidatat adipisicing minim laboris nisi sit qui. Quis eu do nisi occaecat minim duis fugiat pariatur. In id laboris aliqua sit fugiat enim veniam ad dolore incididunt ad eu labore veniam."))
        ],
      ),
    );
  }
}


class Tittle extends StatelessWidget  {
  const Tittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text("lago me pica la nalga", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Subittulo del lago titicaca", style: TextStyle(color: Colors.black45),)
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red,),
          Text("41")
        ],
      ),
    );
  }
}     


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Row(  
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        ColumnButtonSection(icon: Icons.call,text: "Call",),
        ColumnButtonSection(icon: Icons.air,text: "Route",),
        ColumnButtonSection(icon: Icons.share,text: "Share",),
      ],),
    );
  }
}

class ColumnButtonSection extends StatelessWidget {

  //Agrego los atributos de clase
  final IconData icon;
  final String text;
  
  const ColumnButtonSection({
    Key? key,
    //coloco que los dos atributos de clase que creé sean obligatorios
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(this.icon,color: Colors.blue[400],),
      Text(this.text, style: TextStyle(color: Colors.blue[400]),)
    ],);
  }
}

