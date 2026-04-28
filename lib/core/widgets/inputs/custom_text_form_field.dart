import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.validator,
    this.keyboardType,
    this.controller,
    this.prefixIcon,
    this.onTap,
    this.readOnly = false,
    this.onChanged,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Function()? onTap;
  final Function(String)? onChanged;
  final bool readOnly;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(prefixIcon: prefixIcon, hintText: hintText),
        validator: validator,
        onChanged: onChanged,
        onTap: onTap,
      ),
    );
  }
}
