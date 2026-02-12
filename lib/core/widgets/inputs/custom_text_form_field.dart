import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.validator,
    this.keyboardType,
    this.controller,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
        

          hintText: hintText,

        ),
        validator: validator,
      ),
    );
  }
}
