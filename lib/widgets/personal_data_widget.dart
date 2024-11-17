import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'profile_image.dart';
import 'text_data.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        const CustomContainer(
          child: PersonalDataText(),
        ),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height*.35,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: exteriorShadow,
                  offset: Offset(0.0, 0.0),
                  spreadRadius: -1.0,
                  blurRadius:10,
                ),
                // Interior shadow (light source creates depth)
                BoxShadow(
                  color: interiorShadow,
                  offset: Offset(0.0, 0.0),
                  spreadRadius: -1.0,
                  blurRadius:10,
                ),
              ],
            ),
            child: ProfileImage(
              width: MediaQuery.sizeOf(context).width * .51,
              height: MediaQuery.sizeOf(context).height * .24,
            ),
          ),
        ),
      ],
    );
  }
}

const exteriorShadow = Color.fromRGBO(209, 207, 205, 1);
const interiorShadow = Color.fromRGBO(224, 221, 217, 1);
const backgroundColor = Color.fromRGBO(235, 235, 234, 1);
