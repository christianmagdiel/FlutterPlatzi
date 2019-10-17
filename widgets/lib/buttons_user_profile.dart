import 'package:flutter/material.dart';
import 'package:widgets/button_state.dart';

class ButtonsUserProfile extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonsUserProfile();
  }
}

class _ButtonsUserProfile extends State<ButtonsUserProfile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(
        top: 30.0
    ),
    alignment: Alignment(-0.0,-0.5),
    child: Row(
    children: <Widget>[
    ButtonState(Icon(Icons.turned_in_not,color:Colors.blueGrey,),Colors.white,true),
    ButtonState(Icon(Icons.lock_outline,color:Colors.blueGrey,),Colors.white,true),
    ButtonState(Icon(Icons.add,color:Colors.blueGrey,size: 40.0,),Colors.white,false),
    ButtonState(Icon(Icons.mail,color:Colors.blueGrey,),Colors.white,true),
    ButtonState(Icon(Icons.person, color: Colors.blueGrey,),Colors.white, true),
    ],
    )
    );
  }
}