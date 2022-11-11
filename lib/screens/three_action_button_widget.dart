import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_web/controller/home_controller.dart';
import 'package:test_web/responsive.dart';
import 'package:test_web/widgets/custom_button.dart';

class ThreeActionButtonWidget extends StatelessWidget {
  const ThreeActionButtonWidget({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mob: Column(
        children: [
          WebButton(
            txt: "Email",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.sendMail();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          WebButton(
            txt: "Call",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.makeCall();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          WebButton(
            txt: "Location",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.navigateToLocation(20, 20);
            },
          ),
        ],
      ),
      tab: Column(
        children: [
          WebButton(
            txt: "Email",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.sendMail();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          WebButton(
            txt: "Call",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.makeCall();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          WebButton(
            txt: "Location",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.navigateToLocation(20, 20);
            },
          ),
        ],
      ),
      desk: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: WebButton(
              txt: "Email",
              outLineBorder: false,
              high: 55.h,
              colorButton: Colors.teal,
              onPressed: () {
                homeController.sendMail();
              },
              fontSize: 28.sp,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          Expanded(
            child: WebButton(
              txt: "Call",
              outLineBorder: false,
              high: 55.h,
              colorButton: Colors.teal,
              onPressed: () {
                homeController.makeCall();
              },
              fontSize: 28.sp,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          Expanded(
            child: WebButton(
              txt: "Location",
              outLineBorder: false,
              high: 55.h,
              colorButton: Colors.teal,
              onPressed: () {
                homeController.navigateToLocation(20, 20);
              },
              fontSize: 28.sp,
            ),
          ),
        ],
      ),
    );
  }
}
