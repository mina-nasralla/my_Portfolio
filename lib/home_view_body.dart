import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/home_background.dart';
import 'widgets/personal_data_widget.dart';
import 'widgets/social_part_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          alignment: Alignment.topCenter,
          children: [
            const Background(),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      height: MediaQuery.sizeOf(context).height * .66,
                      child: const PersonalData()),
                  const SizedBox(height: 16),
                  const SocialPart(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
