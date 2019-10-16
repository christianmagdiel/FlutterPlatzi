import 'package:flutter/material.dart';

import 'card_profile.dart';

class HeaderProfile extends StatelessWidget{

  String title = "";
  String pathImage = "assets/img/julion.png";
  HeaderProfile(this.title);

  @override
  Widget build(BuildContext context) {

    final headerBackground = Container(
      height: 400.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1)
              ],
              begin: FractionalOffset(0.2,0.0),
              end: FractionalOffset(1.0,0.6),
              stops: [0.0,0.6],
              tileMode: TileMode.clamp
          )
      ),

      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9,-0.6),
    );

    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage),

          )
      ),
    );

    final nameUser = Container(
      margin: EdgeInsets.only(
          top: 140.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
        "Christian Alvarado",
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
    );

    final emailUser = Container(
      margin: EdgeInsets.only(
          top: 140.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
        "cris_ales@live.com.mx",
        style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white70
        ),
      ),
    );

    final descriptionUser = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nameUser,
        emailUser
      ],
    );

    final UserPerfil = Row(
      children: <Widget>[
        photo,
        descriptionUser,
      ],
    );

    final iconsUser = Row(
      children: <Widget>[
        iconShow(Icons.turned_in_not, Colors.white, 40,22),
        iconShow(Icons.card_travel,Colors.white70,40,22),
        iconShow(Icons.add,Colors.white, 60, 50),
        iconShow(Icons.mail_outline,Colors.white70, 40,22),
        iconShow(Icons.person, Colors.white70, 40,22),
      ]
    );

    // TODO: implement build
    return Stack(
        children: <Widget>[
          headerBackground,
          UserPerfil,
          iconsUser,
          CardProfile()
        ],
    );
  }

  iconShow(IconData icondata,Color color ,double sizeCircle, double sizeIcon){
    return Container(

      margin: EdgeInsets.only(
        top: 300,
        right: 10,
        left: 22
      ),
      height: sizeCircle,
      width: sizeCircle,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: color
      ),
      child: Center(
          child:
          Icon(
            icondata,
            size: sizeIcon,
          )
      ),
    );
  }

}