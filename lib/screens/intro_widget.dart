import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_web/widgets/custem_text.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WebText(
          txt: "Welcome,",
          color: Colors.teal,
          fontSize: 38.sp,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.018,
        ),
        WebText(
          txt: "Hi",
          color: Colors.blueGrey,
          fontSize: 32.sp,
        ),
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * 0.05,
        // ),
        // WebButton(
        //   txt: "make",
        //   outLineBorder: false,
        //   width: MediaQuery.of(context).size.width * 0.3,
        //   high: MediaQuery.of(context).size.height * 0.068,
        //   colorButton: Colors.teal,
        // ),
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
