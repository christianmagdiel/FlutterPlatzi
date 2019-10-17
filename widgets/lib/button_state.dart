import 'package:flutter/material.dart';

class ButtonState extends StatelessWidget{
  Icon iconButton =Icon(
    Icons.mail,
    color: Colors.blueGrey,
  );

  Color colorState =Colors.white;


  String msg= "";
  bool sizeButton = true;

  ButtonState(this.iconButton,this.colorState,this.sizeButton);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: EdgeInsets.only(
        left: 25,
      ),
      child: FloatingActionButton(
        child: iconButton,
        mini: sizeButton,
        backgroundColor: colorState,
        onPressed: (){
          colorState = Colors.white54;
        },
      ),
    );
  }
}