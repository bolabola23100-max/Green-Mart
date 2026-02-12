import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.onPressed, required this.text});
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: AppColors.accentColor)),
    );
  }
}
