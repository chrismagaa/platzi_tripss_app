import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/j.jpg";
  String name = "Christian Magaña";
  String details = "1 review 5 photos";
  String comment = "There is an amazing app super useful";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {


    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );



    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final start_boder =  Container(
      margin: const EdgeInsets.only(
          right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 13,
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
          right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 13,
      ),
    );

    final userInfoStars = Row(
      children: <Widget>[
        userInfo,
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

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0,
          )),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfoStars, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
