import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_web/constance/color_const.dart';
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
            fontSize: 70.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          WebButton(
            txt: "Call",
            outLineBorder: false,
            width: 1090.w,
            high: 60.h,
            fontSize: 60.sp,
            colorButton: ColorConst.primaryColor,
            onPressed: () {
              homeController.makeCall();
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          WebText(
            txt: "+972 56 702 2104",
            fontSize: 60.sp,
            color: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          WebText(
            txt: "Address",
            fontSize: 70.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          WebButton(
            txt: "Address",
            outLineBorder: false,
            width: 1090.w,
            high: 60.h,
            fontSize: 60.sp,
            colorButton: ColorConst.primaryColor,
            onPressed: () {
              homeController.navigateToLocation(20, 20);
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          WebText(
            txt: "Gaza - Palestine",
            color: Colors.grey,
            fontSize: 60.sp,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          WebText(
            txt: "Times of work",
            fontSize: 70.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
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
            fontSize: 65.sp,
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
                  fontSize: 60.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                WebButton(
                  txt: "Call",
                  outLineBorder: false,
                  width: MediaQuery.of(context).size.width * 0.35,
                  high: MediaQuery.of(context).size.height * .061,
                  fontSize: 50.sp,
                  colorButton: ColorConst.primaryColor,
                  onPressed: () {
                    homeController.makeCall();
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                WebText(
                  txt: "+972 56 702 2104",
                  color: Colors.grey,
                  fontSize: 55.sp,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                WebText(
                  txt: "Address",
                  fontSize: 60.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                WebButton(
                  txt: "Location",
                  outLineBorder: false,
                  width: MediaQuery.of(context).size.width * 0.35,
                  high: MediaQuery.of(context).size.height * .061,
                  fontSize: 50.sp,
                  colorButton: ColorConst.primaryColor,
                  onPressed: () {
                    homeController.navigateToLocation(20, 20);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                WebText(
                  txt: "Gaza - palestine",
                  color: Colors.grey,
                  fontSize: 55.sp,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "Times of work",
                  fontSize: 60.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
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
                  fontSize: 55.sp,
                  height: 2,
                ),
              ],
            ),
          ),
        ],
      ),
      desk: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "Phone",
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                WebButton(
                  txt: "Call",
                  outLineBorder: false,
                  width: MediaQuery.of(context).size.width * 0.2,
                  high: 55.h,
                  colorButton: ColorConst.primaryColor,
                  onPressed: () {
                    homeController.makeCall();
                  },
                  fontSize: 28.sp,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                WebText(
                  txt: "+972 56 702 2104",
                  color: Colors.grey,
                  fontSize: 25.sp,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "Location",
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                WebButton(
                  txt: "Location",
                  outLineBorder: false,
                  width: MediaQuery.of(context).size.width * 0.2,
                  high: 55.h,
                  colorButton: ColorConst.primaryColor,
                  onPressed: () {
                    homeController.navigateToLocation(25, 43);
                  },
                  fontSize: 28.sp,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                WebText(
                  txt: "Gaza - Palestine",
                  color: Colors.grey,
                  fontSize: 25.sp,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                WebText(
                  txt: "Times of work",
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
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
                  fontSize: 28.sp,
                  height: 2.5.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
