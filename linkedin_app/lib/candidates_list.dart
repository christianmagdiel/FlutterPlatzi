import 'package:flutter/material.dart';

import 'candidates.dart';

class CandidatesList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Candidates("assets/img/messi.jpg","Christian","Ing. en Sistemas","5"),
        Candidates("assets/img/messi.jpg","Christian","Ing. en Sistemas","5"),
        Candidates("assets/img/messi.jpg","Christian","Ing. en Sistemas","5"),
        Candidates("assets/img/messi.jpg","Christian","Ing. en Sistemas","5"),
      ],
    );
  }

}