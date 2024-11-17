import 'package:flutter/material.dart';

class PersonalDataText extends StatelessWidget {
  const PersonalDataText({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mina Magdy Nasralla',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 27),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.cake_sharp, color: Colors.red, size: 30),
                SizedBox(width: 5),
                Text(
                  'Aug 21, 2002',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.white, size: 30),
                SizedBox(width: 5),
                Text(
                  'Egypt | Ismailia',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/flutter.png'),
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: 5),
                Text(
                  'Junior Flutter Developer',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
