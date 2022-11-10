import 'package:flutter/material.dart';
import 'package:test_web/controller/home_controller.dart';
import 'package:test_web/responsive.dart';
import 'package:test_web/widgets/custem_text.dart';
import 'package:test_web/widgets/custom_button.dart';

class InfoSectionWidget extends StatelessWidget {
  const InfoSectionWidget({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mob: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WebText(
            txt: "Phone",
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
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
            height: 10,
          ),
          WebText(
            txt: "+972 56 702 2104",
            fontSize: 18,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 40,
          ),
          WebText(
            txt: "Address",
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          WebButton(
            txt: "Address",
            outLineBorder: false,
            width: 300,
            high: 50,
            colorButton: Colors.teal,
            onPressed: () {
              homeController.navigateToLocation(20, 20);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          WebText(
            txt: "Gaza - Palestine",
            color: Colors.grey,
            fontSize: 18,
          ),
          const SizedBox(
            height: 40,
          ),
          WebText(
            txt: "times of work",
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          WebText(
            txt: "Mo: 10:00–19:00 Uhr\n"
                "Di: 10:00–19:00 Uhr\n"
                "Mi: 10:00–19:00 Uhr\n"
                "Do: 10:00–19:00 Uhr\n"
                "Fr: 10:00–19:00 Uhr\n"
                "Sa: 09:00–17:00 Uhr\n"
                "So: Geschlossen",
            color: Colors.grey,
            fontSize: 18,
            height: 2,
          ),
        ],
      ),
      tab: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "Phone",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
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
                  height: 10,
                ),
                WebText(
                  txt: "+972 56 702 2104",
                  color: Colors.grey,
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 40,
                ),
                WebText(
                  txt: "Address",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 10,
                ),
                WebText(
                  txt: "Gaza - palestine",
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "times of work",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                WebText(
                  txt: "Mo: 10:00–19:00 Uhr\n"
                      "Di: 10:00–19:00 Uhr\n"
                      "Mi: 10:00–19:00 Uhr\n"
                      "Do: 10:00–19:00 Uhr\n"
                      "Fr: 10:00–19:00 Uhr\n"
                      "Sa: 09:00–17:00 Uhr\n"
                      "So: Geschlossen",
                  color: Colors.grey,
                  fontSize: 18,
                  height: 2,
                ),
              ],
            ),
          ),
        ],
      ),
      desk: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      WebText(
                        txt: "Phone",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10,
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
                        height: 10,
                      ),
                      WebText(
                        txt: "+972 56 702 2104",
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      WebText(
                        txt: "Address",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10,
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
                      const SizedBox(
                        height: 10,
                      ),
                      WebText(
                        txt: "Gaza - palestine",
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "times of work",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                WebText(
                  txt: "Mo: 10:00–19:00 Uhr\n"
                      "Di: 10:00–19:00 Uhr\n"
                      "Mi: 10:00–19:00 Uhr\n"
                      "Do: 10:00–19:00 Uhr\n"
                      "Fr: 10:00–19:00 Uhr\n"
                      "Sa: 09:00–17:00 Uhr\n"
                      "So: Geschlossen",
                  color: Colors.grey,
                  fontSize: 18,
                  height: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}