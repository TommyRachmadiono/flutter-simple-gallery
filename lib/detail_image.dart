import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String image;

  DetailImage({this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Hero(
              tag: image,
              child: Image.network(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
