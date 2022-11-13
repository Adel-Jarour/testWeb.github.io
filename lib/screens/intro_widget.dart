import 'package:flutter/material.dart';
import 'package:test_web/constance/color_const.dart';
import 'package:test_web/widgets/custem_text.dart';

class IntroWidget extends StatelessWidget {
   IntroWidget({
    Key? key,
    required this.txtFontSize,
    required this.descFontSize,
  }) : super(key: key);

  double? txtFontSize;
  double? descFontSize;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WebText(
          txt: "Welcome,",
          color: ColorConst.primaryColor,
          fontSize: txtFontSize,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.018,
        ),
        WebText(
          txt: "Hi",
          color: Colors.blueGrey,
          fontSize: descFontSize,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: NetworkImage(
                "https://media.gettyimages.com/photos/barber-styling-senior-males-beard-picture-id1227512439?s=612x612",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
