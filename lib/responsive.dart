import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  // const Responsive({Key? key}) : super(key: key);

  final Widget mob, tab, desk;

  Responsive({required this.mob, required this.tab, required this.desk});

  static isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 576;
  }

  static isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 576 &&
        MediaQuery.of(context).size.width <= 992;
  }

  static isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 992;
  }

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return mob;
    } else if (isTablet(context)) {
      return tab;
    } else {
      return desk;
    }
  }
}
