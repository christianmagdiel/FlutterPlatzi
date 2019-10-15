import 'package:flutter/material.dart';
import 'package:widgets/card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
        child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardImage("assets/img/altata.jpg"),
            CardImage("assets/img/playa.jpg"),
            CardImage("assets/img/plazuela.jpg"),
          ],
        ),
    );
  }

}