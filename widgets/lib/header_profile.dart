import 'package:flutter/material.dart';
import 'package:widgets/review_profile.dart';

import 'buttons_user_profile.dart';
import 'card_profile.dart';
import 'card_profile_list.dart';

class HeaderProfile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Stack(
        children: <Widget>[
          ReviewProfile(),
        ],
    );
  }


}