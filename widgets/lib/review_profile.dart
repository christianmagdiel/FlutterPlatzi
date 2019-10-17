import 'package:flutter/material.dart';

class ReviewProfile extends StatelessWidget{
  String pathImage = "assets/img/julion.png";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final emailUser = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child : Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "cris_ales@live.com.mx",
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white70
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5.0
            ),
          )
        ],
      ),

    );

    final nameUser = Container(
      margin: EdgeInsets.only(
          top: 20,
          left: 20.0
      ),
      child: Text(
        "Christian Alvarado",
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
    );


    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nameUser,
        emailUser
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
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

    return Container(
      margin: EdgeInsets.only(
        top: 10.0
      ),
      alignment: Alignment(-0.9,-0.7),
      child: Row(
        children: <Widget>[
          photo,
          Container(
            height: 80.0,
            child: userDetails,
          )
        ],
      ),
    );
  }

}