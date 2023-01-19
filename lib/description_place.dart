import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final start_half =  Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final start_boder =  Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );


    final title_starts = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child:  Text(
            namePlace,
            style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            start_boder
          ],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child:  Text(descriptionPlace,
        style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),
      ),

    );

    final columna = Column(
      children: <Widget>[
        title_starts,
       description
      ],
    );



    return columna;
  }
}
