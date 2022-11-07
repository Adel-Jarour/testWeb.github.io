import 'package:flutter/material.dart';

import 'custem_text.dart';

class WebButton extends StatelessWidget {
  final String? txt;
  final Color? colorButton;
  final Color? colorIfOutLineButtonTrue;
  final Color? colorOutLineButton;
  final Color? colorTxt;
  final Function? onPressed;
  final Alignment? alignment;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? width;
  final double? high;
  final double? borderRadius;
  final bool outLineBorder;
  final double widthOutLineBorder;

  WebButton({
    required this.txt,
    this.colorButton = Colors.white,
    this.colorTxt = Colors.white,
    this.onPressed,
    this.alignment = Alignment.center,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 16,
    this.width,
    required this.high,
    this.borderRadius = 20,
    required this.outLineBorder,
    this.colorOutLineButton = Colors.white,
    this.widthOutLineBorder = 0,
    this.colorIfOutLineButtonTrue
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: high,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.elliptical(20, 15),),
              side: outLineBorder
                  ? BorderSide(color: colorOutLineButton! ,width: widthOutLineBorder)
                  : BorderSide(color: colorButton!),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
              outLineBorder ? colorIfOutLineButtonTrue : colorButton),
        ),
        onPressed: () {
          onPressed!();
        },
        child: WebText(
          color: colorTxt,
          txt: txt,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
