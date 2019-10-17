import 'package:flutter/material.dart';
import 'package:widgets/card_profile_list.dart';
import 'package:widgets/gradient_back.dart';
import 'package:widgets/review_profile.dart';
import 'buttons_user_profile.dart';
import 'header_profile.dart';

class ProfileTrips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        CardProfileList(),
       GradientBack("Profile"),
        Container(
            margin: EdgeInsets.only(
              top: 60.0,
              left: 270.0
            ),
          child: Icon(
            Icons.settings,
            color: Colors.blueGrey,
            size: 18.0,
          ),
        ),
        ReviewProfile(),
        ButtonsUserProfile(),
      ],
    );
  }
}