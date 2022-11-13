import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/responsive.dart';
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

  late PageController _pageController;
  late BuildContext context;

  // double _getViewportFraction(){
  //   if (double.infinity < 350){
  //     return 1 / 1;
  //   }else if (double.infinity >= 350 && double.infinity < 800){
  //     return 1 / 2.0;
  //   }else {
  //     return 1/ 3;
  //   }
  // }

  PageController getPageController(BuildContext context){
    if (Responsive.isMobile(context)){
      return _pageController = PageController(viewportFraction: 1 / 1);
    }else if (Responsive.isTablet(context)){
      return _pageController = PageController(viewportFraction: 1 / 2);
    }else {
      return _pageController = PageController(viewportFraction: 1 / 3);
    }
  }

  // @override
  // void onInit() {
  //
  //   super.onInit();
  //   // pageController = PageController(viewportFraction: 1 / 3);
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  void next() {
    _pageController.nextPage(duration: const Duration(milliseconds: 900), curve: Curves.fastOutSlowIn);
  }
  void back() {
    _pageController.previousPage(duration: const Duration(milliseconds: 900), curve: Curves.fastOutSlowIn);
  }


}
