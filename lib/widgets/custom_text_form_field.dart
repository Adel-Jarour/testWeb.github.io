import 'package:flutter/material.dart';

class WebTextFormField extends StatelessWidget {
  final String? hintTxt;
  final String? label;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final Function? onSaved;
  final Function? validator;
  final Function? onChange;
  final Function? onPressedSuffixIcon;
  final Function? onPressedPrefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final double? fontSize;
  final double? contentPadding;
  final Color? color;
  final FontWeight? fontWeight;
  final bool? obscureText;
  final int? minLines;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextDirection? textDirection;

   WebTextFormField({
    this.hintTxt,
    this.onSaved,
    this.validator,
    this.suffixIcon,
    this.onPressedSuffixIcon,
    this.onPressedPrefixIcon,
    this.keyboardType,
    this.label,
    this.controller,
    this.onChange,
    this.fontSize = 16,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w600,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.helperText = '',
    this.prefixIcon,
    this.contentPadding = 12,
    this.textAlign = TextAlign.right,
    this.textDirection = TextDirection.rtl,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (val) => onSaved!(val),
      validator: (val) => validator!(val),
      controller: controller,
      onChanged: (val) => onChange!(val),
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintTxt,
        fillColor: const Color(0xFFF0F0F0),
        filled: true,
        labelStyle:
            TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        labelText: label,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        prefixIcon: IconButton(
            icon: Icon(prefixIcon), onPressed: () => onPressedPrefixIcon!()),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: contentPadding!),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText!,
    );
  }
}
