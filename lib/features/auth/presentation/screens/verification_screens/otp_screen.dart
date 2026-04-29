import 'dart:async';

import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
import 'package:green_mart/features/main_layout/presentation/screens/main_layout.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.text});
  final String text;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();

  Timer? _timer;
  void startTimeDown() {
    _timer?.cancel();
    setState(() {
      _remainingTime = 60;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  int _remainingTime = 60;
  @override
  void initState() {
    super.initState();
    startTimeDown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(color: AppColors.blackColor)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                SizedBox(height: 168),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text(
                      "Enter verification code",
                      style: TextStyles.title,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Row(
                      children: [
                        Text(
                          "We have sent SMS to:",
                          style: TextStyles.subtitle,
                        ),
                        Text(widget.text, style: TextStyles.subtitle),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 36),

                Pinput(
                  length: 5,
                  controller: pinController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 31),
                Row(
                  spacing: 27,
                  children: [
                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: TextButton(
                        onPressed: _remainingTime == 0 ? startTimeDown : null,
                        child: Text(
                          "Resend OTP",
                          style: TextStyle(
                            fontSize: 14,
                            color: _remainingTime == 0
                                ? AppColors.tangoColor
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: TextButton(
                        onPressed: () {
                          pop(context);
                        },
                        child: Text(
                          "Change Phone Number",
                          style: TextStyles.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 27),

                MainButton(
                  onPressed: () {
                    pushReplacement(context, MainLayout());
                  },
                  text: "Confirm",
                ),
                SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Resend confirmation code"),
                    Text("($_remainingTime)"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
