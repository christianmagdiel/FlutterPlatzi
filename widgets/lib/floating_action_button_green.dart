import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool isFavorite = true;
  IconData buttonIcon = Icons.favorite_border;
  String mensaje;
  void onPressedFav(){
    if (!isFavorite){
      mensaje = "Agregado a favoritos";
      buttonIcon = Icons.favorite;
    }else{
      mensaje = "Eliminado de favoritos";
      buttonIcon = Icons.favorite_border;
    }
    setState(() {
      isFavorite = !isFavorite;
    });

    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(mensaje),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
          buttonIcon
      ),
    );
  }

}