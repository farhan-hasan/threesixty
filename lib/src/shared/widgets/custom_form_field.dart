import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.obscureText = false,
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final FormFieldValidator<String> validator;
  final String? helperText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        cursorColor: lightTheme.primaryColor,
        style: context.titleMedium?.copyWith(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: prefixIcon ?? null,
          suffixIcon: suffixIcon ?? null,
          helperStyle: context.bodySmall?.copyWith(color: Colors.grey),
          hintStyle: context.titleMedium?.copyWith(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey), 
            borderRadius: BorderRadius.circular(8)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: hintText,
          helperText: helperText,
          border: OutlineInputBorder(),
        ),
        obscureText: obscureText,
        validator: validator,
      ),
    );
  }
}
