import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_web/controller/home_controller.dart';
import 'package:test_web/responsive.dart';
import 'package:test_web/screens/about_us_screen.dart';
import 'package:test_web/widgets/custom_list_tile.dart';

class ListTileDrawerWidget extends StatelessWidget {
  ListTileDrawerWidget({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mob: Column(
        children: [
          CustomListTile(
            txt: "Location",
            icon: Icons.location_on,
            onTap: () {
              homeController.navigateToLocation(20, 29);
            },
            fontSize: 55.sp,
            iconSize: 70.r,
          ),
          CustomListTile(
            txt: "Call",
            icon: Icons.call,
            onTap: () {
              homeController.makeCall();
            },
            fontSize: 55.sp,
            iconSize: 70.r,
          ),
          CustomListTile(
            txt: "Email",
            icon: Icons.email,
            onTap: () {
              homeController.sendMail();
            },
            fontSize: 55.sp,
            iconSize: 70.r,
          ),
          CustomListTile(
            txt: "Facebook",
            icon: Icons.facebook,
            onTap: () {},
            fontSize: 55.sp,
            iconSize: 70.r,
          ),
          CustomListTile(
            txt: "Instagram",
            icon: Icons.face,
            onTap: () {},
            fontSize: 55.sp,
            iconSize: 70.r,
          ),
          CustomListTile(
            txt: "About us",
            icon: Icons.info,
            onTap: () {
              Get.offAll(() => const AboutUsScreen());
            },
            fontSize: 55.sp,
            iconSize: 70.r,
          ),
        ],
      ),
      tab: Column(
        children: [
          CustomListTile(
            txt: "Location",
            icon: Icons.location_on,
            onTap: () {
              homeController.navigateToLocation(20, 29);
            },
            fontSize: 40.sp,
            iconSize: 50.r,
          ),
          CustomListTile(
            txt: "Call",
            icon: Icons.call,
            onTap: () {
              homeController.makeCall();
            },
            fontSize: 40.sp,
            iconSize: 50.r,
          ),
          CustomListTile(
            txt: "Email",
            icon: Icons.email,
            onTap: () {
              homeController.sendMail();
            },
            fontSize: 40.sp,
            iconSize: 50.r,
          ),
          CustomListTile(
            txt: "Facebook",
            icon: Icons.facebook,
            onTap: () {},
            fontSize: 40.sp,
            iconSize: 50.r,
          ),
          CustomListTile(
            txt: "Instagram",
            icon: Icons.face,
            onTap: () {},
            fontSize: 40.sp,
            iconSize: 50.r,
          ),
          CustomListTile(
            txt: "About us",
            icon: Icons.info,
            onTap: () {
              Get.offAll(() => const AboutUsScreen());
            },
            fontSize: 40.sp,
            iconSize: 50.r,
          ),
        ],
      ),
      desk: Column(
        children: [
          CustomListTile(
            txt: "Location",
            icon: Icons.location_on,
            onTap: () {
              homeController.navigateToLocation(20, 29);
            },
            fontSize: 25.sp,
          ),
          CustomListTile(
            txt: "Call",
            icon: Icons.call,
            onTap: () {
              homeController.makeCall();
            },
            fontSize: 25.sp,
          ),
          CustomListTile(
            txt: "Email",
            icon: Icons.email,
            onTap: () {
              homeController.sendMail();
            },
            fontSize: 25.sp,
          ),
          CustomListTile(
            txt: "Facebook",
            icon: Icons.facebook,
            onTap: () {},
            fontSize: 25.sp,
          ),
          CustomListTile(
            txt: "Instagram",
            icon: Icons.face,
            onTap: () {},
            fontSize: 25.sp,
          ),
          CustomListTile(
            txt: "About us",
            icon: Icons.info,
            onTap: () {
              Get.offAll(() => const AboutUsScreen());
            },
            fontSize: 25.sp,
          ),
        ],
      ),
    );
  }
}
