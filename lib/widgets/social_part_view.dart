import 'package:flutter/material.dart';

import 'social_items.dart';

class SocialPart extends StatelessWidget {
  const SocialPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: SocialItem(
                      img: 'assets/images/email22.png',
                      link: 'https://mail.google.com/mail/u/0/#inbox',
                      title: 'Email',
                      des: 'mina97105@gmail.com',
                      bgcolor: Color(0xff143061))),
              SizedBox(width: 16),
              Expanded(
                  child: SocialItem(
                      img: 'assets/images/facebook.png',
                      link: 'https://www.facebook.com/mena.magdy.92798072',
                      title: 'Facebook',
                      des: 'Mina magdy',
                      bgcolor: Color(0xff1264D6))),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                  child: SocialItem(
                      img: 'assets/images/github (1).png',
                      link: 'https://github.com/mina-nasralla',
                      title: 'GitHub',
                      des: 'mina\nnasralla',
                      bgcolor: Color(0xff0F0F0F))),
              SizedBox(width: 16),
              Expanded(
                  flex: 2,
                  child: SocialItem(
                      img: 'assets/images/linkedin-1.png',
                      link: 'https://www.linkedin.com/in/mina-magdy-7500062bb/',
                      title: 'LinkedIn',
                      des: 'Mina Magdy',
                      bgcolor: Color(0xff0b1835))),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: SocialItem(
                      img: 'assets/images/instagram.png',
                      link: 'https://www.instagram.com/menamagdy7949/',
                      title: 'Instagram',
                      des: 'menamagdy7949',
                      bgcolor: Color(0xfff64970))),
              SizedBox(width: 16),
              Expanded(
                  child: SocialItem(
                      img: 'assets/images/whats.png',
                      link:
                          'https://api.whatsapp.com/send/?phone=201202959537&text&type=phone_number&app_absent=0',
                      title: 'Whatsapp',
                      des: 'Contact me',
                      bgcolor: Color(0xff15c667))),
            ],
          ),
        ],
      ),
    );
  }
}
