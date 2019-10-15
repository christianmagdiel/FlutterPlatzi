import 'package:flutter/material.dart';

class ButtonMessage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Enviar mensaje"),
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
            left: 60.0,
            right: 20.0
        ),
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.red
        ),
        child: Center(
          child:
            Icon(
              Icons.email,
              color: Colors.white,
            )
        ),
      ),
    );
  }

}