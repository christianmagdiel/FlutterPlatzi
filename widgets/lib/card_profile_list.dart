import 'package:flutter/material.dart';

import 'card_profile.dart';

class CardProfileList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(120.0),
          ),
          CardProfile(),
          Container(
            margin: EdgeInsets.all(20.0),
          ),
          CardProfile(),
          Container(
            margin: EdgeInsets.all(30.0),
          ),
        ],
      ),
    );
  }

}