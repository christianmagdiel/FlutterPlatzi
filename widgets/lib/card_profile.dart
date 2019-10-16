import 'package:flutter/material.dart';

import 'floating_action_button_green.dart';

class CardProfile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final card = Center(
      child: Container(
        height: 210.0,
        width: 350.0,
        margin: EdgeInsets.only(
            top: 210.0,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/playa.jpg")
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.blue,
                  blurRadius: 15.0,
                  offset: Offset(0.0,7.0)
              )
            ]
        ),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      child: new Text(
        "asdas",
        style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
        ),
      ),
    );

    final textDescription = InkWell(
      child: Container(
          margin: EdgeInsets.only(
              top: 0.0,
              left: 20.0,
              right: 20.0
          ),
          height: 95.0,
          width: 250.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp
              ),
              boxShadow: <BoxShadow> [
                BoxShadow (
                    color: Colors.black38,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 7.0)
                )
              ]
          ),
      )
    );

    final Cuadro = Container(
      height: 290.0,
      child: Stack(
        alignment: Alignment(0.0, -1.0),
        children: <Widget>[
          card,
          Container(
            alignment: Alignment(0.0, 0.8),
            child: textDescription,
          ),
          Container(
            alignment: Alignment(0.5, 1.0),
            child: FloatingActionButtonGreen(),
          ),
        ],
      ),
    );

    return Stack(
      children: <Widget>[
        Cuadro,
      ],
    );
  }

}