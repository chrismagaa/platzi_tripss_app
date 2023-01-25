import 'package:flutter/material.dart';
import 'user_info.dart';
import 'buttons_bar.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
      ),
    );

    final settignsIcon = Icon(Icons.settings,
    color: Colors.white);

    return Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: title),
              settignsIcon
            ],
          ),
          UserInfo('assets/img/vader.jpg', 'Christian MG','christianmagaa@mail.com'),
          ButtonsBar()
        ],
      ),
    );
  }

}