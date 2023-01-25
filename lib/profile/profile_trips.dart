import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/profile/header/header_profile.dart';
import 'package:platzi_tripss_app/profile/header/profile_background.dart';
import 'package:platzi_tripss_app/profile/places/places_list.dart';


class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Stack(
     children: <Widget>[
       BackgroundProfile(),
       ListView(
         children: <Widget>[
           HeaderProfile(),
           PlacesList()
         ],
       )
     ],
   );
  }

}