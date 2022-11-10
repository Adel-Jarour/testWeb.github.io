import 'package:flutter/material.dart';
import 'package:test_web/responsive.dart';

extension WidgetX on Widget {
  Widget paddingMobile(BuildContext context, double h, v) {
    if (Responsive.isMobile(context)) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
        child: this,
      );
    } else {
      return this;
    }
  }

  Widget paddingDesk(BuildContext context, double h, v) {
    if (Responsive.isDesktop(context)) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
        child: this,
      );
    } else {
      return this;
    }
  }

  Widget paddingTab(BuildContext context, double h, v) {
    if (Responsive.isTablet(context)) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
        child: this,
      );
    } else {
      return this;
    }
  }

  Widget size(double w, h) {
    return Column(
      children: [
        this,
        SizedBox(width: w, height: h),
      ],
    );
  }
}
