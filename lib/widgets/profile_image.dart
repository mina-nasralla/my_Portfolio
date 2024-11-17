import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double width;
  final double height;

  const ProfileImage({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: exteriorShadow,
            offset: Offset(0.0, 0.0),
            spreadRadius: 1.0,
            blurRadius: 8,
          ),
          // Interior shadow (light source creates depth)
          BoxShadow(
            color: interiorShadow,
            offset: Offset(0.0, 0.0),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
        image: const DecorationImage(
          image: AssetImage('assets/images/my.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      width: width,
      height: height,
    );
  }
}

const exteriorShadow = Color.fromRGBO(209, 207, 205, 1);
const interiorShadow = Color.fromRGBO(224, 221, 217, 1);
const backgroundColor = Color.fromRGBO(235, 235, 234, 1);
