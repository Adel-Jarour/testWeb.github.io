import 'package:flutter/material.dart';
import 'package:test_web/responsive.dart';

extension WidgetX on Widget {
  Widget paddingMobile(BuildContext context, {required double horizontal, required vertical}) {
    if (Responsive.isMobile(context)) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );
    } else {
      return this;
    }
  }

  Widget paddingDesk(BuildContext context, {required double horizontal, required vertical}) {
    if (Responsive.isDesktop(context)) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );
    } else {
      return this;
    }
  }

  Widget paddingTab(BuildContext context, {required double horizontal, required vertical}) {
    if (Responsive.isTablet(context)) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );
    } else {
      return this;
    }
  }

  Widget size(double width, height) {
    return Column(
      children: [
        this,
        SizedBox(width: width, height: height),
      ],
    );
  }
}
