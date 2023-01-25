import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Jalisquillos", 3,
                "Algo que debemos recordar es que los widgets que usamos como children, pueden definirse bien sea directamente (inline) o bien a través de clases externas (o widgets personalizados) que hemos definido previamente en archivos .dart independientes."),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}