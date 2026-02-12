import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/colors.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(color: AppColors.blackColor)),
      body: ListView(
        children: [
          Padding(
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
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          color: AppColors.blackColor,
                        ),
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
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: AppColors.greyColor,
                            ),
                          ),
                          Text(
                            widget.text,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: AppColors.greyColor,
                            ),
                          ),
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
                          onPressed: () {},
                          child: Text(
                            "Resend OTP",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.tangoColor,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Change Phone Number",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 27),

                  MainButton(onPressed: () {}, text: "Confirm"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
