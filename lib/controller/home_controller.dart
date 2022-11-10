import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeController extends GetxController {
  void navigateToLocation(double lat, double lng) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    if (await canLaunchUrlString(googleUrl)) {
      await launchUrlString(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  void makeCall() {
    launchUrlString("tel://0567022104");
  }

  void sendMail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'adel.jarour.2020@gmail.com',
      query: encodeQueryParameters(<String, String>{
        // 'subject': 'Example Subject & Symbols are allowed!',
      }),
    );
    launchUrl(emailLaunchUri);
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  late ScrollController listViewController;
  late PageController pageController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    listViewController = ScrollController();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    listViewController.dispose();
    pageController.dispose();
  }

  void next() {
    pageController.nextPage(duration: const Duration(milliseconds: 900), curve: Curves.fastOutSlowIn);
  }
  void back() {
    pageController.previousPage(duration: const Duration(milliseconds: 900), curve: Curves.fastOutSlowIn);
  }

// void scrollNext() {
//   listViewController.animateTo(
//     listViewController.position.maxScrollExtent,
//     duration: Duration(seconds: 1),
//     curve: Curves.fastOutSlowIn,
//   );
// }

// double? index;
//
// putIndex(double index){
//   this.index = index;
//   update();
// }
//
// double? getIndex() {
//
//   if(index != null) {
//     double back = index! - 1;
//     return back;
//   } else {
//     return 1;
//   }
// }
//
// void scrollBack() {
//   // listViewController.animateTo(
//   //     listViewController.position.extentBefore,
//   //     curve: Curves.fastLinearToSlowEaseIn,
//   //     duration: const Duration(seconds: 1),
//   // );
//   listViewController.jumpTo(getIndex() ?? 1);
// }

}
