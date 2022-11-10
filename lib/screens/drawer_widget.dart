import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/controller/home_controller.dart';
import 'package:test_web/screens/about_us_screen.dart';
import 'package:test_web/widgets/custem_text.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 220,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  size: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.location_on,
                  ),
                  title: WebText(
                    txt: "Location",
                    color: Colors.teal,
                  ),
                  onTap: () {
                    homeController.navigateToLocation(20, 20);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.call),
                  title: WebText(
                    txt: "Call",
                    color: Colors.teal,
                  ),
                  onTap: () {
                    homeController.makeCall();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.email),
                  title: WebText(
                    txt: "Email",
                    color: Colors.teal,
                  ),
                  onTap: () {
                    homeController.sendMail();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.facebook),
                  title: WebText(
                    txt: "Facebook",
                    color: Colors.teal,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.face),
                  title: WebText(
                    txt: "Instagram",
                    color: Colors.teal,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: WebText(
                    txt: "About us",
                    color: Colors.teal,
                  ),
                  onTap: () {
                    Get.to(() => const AboutUsScreen());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
