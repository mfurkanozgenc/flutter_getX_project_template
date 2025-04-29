import 'package:flutter/material.dart';
import 'package:project_template/constants/color_constants.dart';

class MainTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final int maxLines;
  final int minLines;
  final bool enabled;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final double paddingSize;

  const MainTextFormField(
      {super.key,
      this.controller,
      this.hintText,
      this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.validator,
      this.onChanged,
      this.maxLines = 1,
      this.minLines = 1,
      this.enabled = true,
      this.readOnly = false,
      this.textInputAction,
      this.paddingSize = 10});

  @override
  Widget build(BuildContext context) {
    var colors = ColorConstants();
    return Padding(
      padding: EdgeInsets.all(paddingSize),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        maxLines: maxLines,
        minLines: minLines,
        enabled: enabled,
        readOnly: readOnly,
        textInputAction: textInputAction,
        cursorColor: colors.generalColor,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(color: colors.generalColor),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: colors.generalColor.shade200)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: colors.generalColor.shade700)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: colors.errorColor.shade400)),
        ),
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
