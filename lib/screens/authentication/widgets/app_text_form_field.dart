import 'package:education_app/constants/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/color.dart';
import '../../../constants/theming/colors.dart';


class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  const AppTextFormField({Key? key, 
   required this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.0.w,
              vertical: 10.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: kPrimaryLight,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),
        hintStyle: hintStyle ?? const TextStyle(fontSize: 18,color: darkBlue,fontWeight: FontWeightHelper.medium,fontFamily: 'ArbFONTS'),
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ??  kPrimaryLight,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: const TextStyle(fontSize: 14,color: darkBlue),
    );
  }
}
