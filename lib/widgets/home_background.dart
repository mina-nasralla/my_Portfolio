import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/Fixed Default.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
