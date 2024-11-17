import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialItem extends StatelessWidget {
  const SocialItem({
    super.key, required this.img, required this.link, required this.title, required this.des, required this.bgcolor,
  });
  final String img;
  final String link;
  final String title;
  final String des;
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*.16,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: exteriorShadow,
            offset: Offset(0.0, 0.0),
          ),
          BoxShadow(
            color: interiorShadow,
            offset: Offset(0.0, 0.0),
            spreadRadius: -1.0,
            blurRadius:10,
          ),
        ],
        color: bgcolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                    width:30,height: 30,
                    child: Image(image: AssetImage(img))),
                const Spacer(),
                InkWell(
                    onTap: () async {
                      Uri uri = Uri.parse(link);
                      if (!await launchUrl(uri)) {
                          throw Exception('Could not launch $uri');
                      }
                    },
                    child: const Icon(Icons.open_in_new_outlined,color: Colors.white,size: 20,))

                // IconButton(onPressed: (){
                //   Uri.parse(link);
                // }, icon: const Icon(Icons.open_in_new_outlined,color: Colors.white,size: 20,))
              ],
            ),
            const SizedBox(height: 8,),
            Text(title,style: const TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 14),),
            const SizedBox(height: 4,),
            Text(des,style: const TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 12),)
          ],
        ),
      ),
    );
  }
}

const exteriorShadow = Color.fromRGBO(209, 207, 205, 1);
const interiorShadow = Color.fromRGBO(224, 221, 217, 1);
const backgroundColor = Color.fromRGBO(235, 235, 234, 1);
