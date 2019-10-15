import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Review("assets/img/julion.png", "Julion Alvarez", "Esta bien placosa, fierro pariente", "1 review 1 photos"),
         Review("assets/img/danna.jpeg", "Danna Paola", "Muy padre la app, recomendada", "1 review 10 photos"),
         Review("assets/img/scarlett.jpg", "scarlett johansson", "You're Amazing","2 review 3 photos ")

      ],
    );
  }


}