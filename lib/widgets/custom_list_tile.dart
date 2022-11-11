import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomListTile extends StatelessWidget {

  final IconData? icon;
  final String? txt;
  final Function? onTap;
  final double? fontSize;
  double? iconSize = 20.r;

  CustomListTile({
    this.icon,
    this.txt,
    this.onTap,
    this.fontSize,
    this.iconSize
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: iconSize,
      ),
      title: Text(
        "$txt",
        style: TextStyle(
          color: Colors.teal,
          fontSize: fontSize,
        ),
      ),
      onTap: () {
        onTap!();
      },
    );
  }
}
