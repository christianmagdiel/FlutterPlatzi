import 'package:flutter/material.dart';
import 'package:widgets/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Navolato",
                4,
                "Navolato es una ciudad del estado de Sinaloa, es cabecera del municipio de Navolato. "
                    "Cuenta con 28 676 habitantes. Navolato pertenece a la Zona Centro del Estado, "
                    "la cual está integrada por los municipios de Culiacán, Salvador Alvarado, Angostura, Mocorito y Badiraguato. "),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}