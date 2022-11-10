import 'package:flutter/material.dart';
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
        children: [
          Expanded(
            child: WebButton(
              txt: "Email",
              outLineBorder: false,
              high: 50,
              colorButton: Colors.teal,
              onPressed: () {
                homeController.sendMail();
              },
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: WebButton(
              txt: "Call",
              outLineBorder: false,
              high: 50,
              colorButton: Colors.teal,
              onPressed: () {
                homeController.makeCall();
              },
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: WebButton(
              txt: "Location",
              outLineBorder: false,
              high: 50,
              colorButton: Colors.teal,
              onPressed: () {
                homeController.navigateToLocation(20, 20);
              },
            ),
          ),
        ],
      ),
    );
  }
}
