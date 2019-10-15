import 'package:flutter/material.dart';

import 'button_message.dart';

class Candidates extends StatelessWidget{

  String pathImage = "";
  String name = "";
  String profession = "";
  String experience = "";

  Candidates(this.pathImage, this.name, this.profession, this.experience);
  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final userProfession = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        profession,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 16
        ),
      ),
    );

    final userExperience = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        "Experience: "+ experience+ " años",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 14.0,
          color: Colors.grey,
          fontStyle: FontStyle.italic
        ),
      ),
    );

    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          bottom: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          )
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userProfession,
        userExperience
      ],
    );

    // TODO: implement build
    return Row(
     children: <Widget>[
       photo,
       userDetails,
       ButtonMessage()
     ],
    );
  }
}