import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  String pathImage = "assets/img/j.jpg";
  String name = "Christian Magaña";
  String details = "1 review - 5 photos";
  String comment = "There is an amazing app super useful";

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(pathImage, name, details, comment),
        Review(pathImage, name, details, comment),
        Review(pathImage, name, details, comment),
        Review(pathImage, name, details, comment),
      ],
    );
  }

}