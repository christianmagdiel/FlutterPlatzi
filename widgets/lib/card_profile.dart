import 'package:flutter/material.dart';

import 'floating_action_button_green.dart';

class CardProfile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
        height: 240.0,
        margin: EdgeInsets.only(
          left: 13.0,
          right: 13.0
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
      );

    final cardText = Container(
      //alignment: Alignment(0.8, 1.2),
      width: 290.0,
      height: 110.0,
      margin: EdgeInsets.only(
        left: 13.0,
        right: 13.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 15.0,
                left: 15.0
            ),
            child: Text(
              "amazing place",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 5.0,
                left: 15.0
            ),
            child: Text(
              "excellent",
              style: TextStyle(
                color: Colors.black45,
                fontFamily: "Lato",
                fontSize: 13.0,

              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 15.0
            ),
            child: Text(
              "photography",
              style: TextStyle(
                  color: Colors.black45,
                  fontFamily: "Lato",
                  fontSize: 13.0
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.only(
                top: 5.0,
                left: 15.0
            ) ,
            child: Text(
              "steps 12.123.125",
              style: TextStyle(
                  color: Color.fromRGBO(210, 159, 104, 1),
                  fontFamily: "Lato",
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );

    return  Stack(
        alignment: Alignment(0.0, 1.25),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(

            ),
            child: card,
          ),
          cardText,
          Container(
            margin: EdgeInsets.only(
              left: 20.0,
            ),
            alignment: Alignment(0.7, 1.0),
            child: FloatingActionButtonGreen(),
          ),
        ],
    );
  }

}