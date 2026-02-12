import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/validation.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key});

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        textInputAction: TextInputAction.next,

        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: "*********",

          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(
              obscureText
                  ? Icons.remove_red_eye_outlined
                  : Icons.visibility_off_outlined,
            ),
          ),
        ),
        validator: (input) {
          if (input!.isEmpty) {
            return "Please enter your password";
          } else if (input.length < 6) {
            return "Password must be at least 6 characters";
          } else if (!isPassword(input)) {
            return "Password must contain at least one uppercase letter and one number";
          }
          return null;
        },
      ),
    );
  }
}
