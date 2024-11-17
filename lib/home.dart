import 'package:flutter/material.dart';

import 'home_view_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: HomeView()
      ),
    );
  }
}

