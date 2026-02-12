import 'package:flutter/material.dart';

import 'package:green_mart/core/functions/validation.dart';
import 'package:green_mart/core/theme/colors.dart';
import 'package:green_mart/core/widgets/inputs/custom_text_form_field.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
import 'package:green_mart/features/auth/verification_screens/otp_screen.dart';

class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({super.key});
  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

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
                        "Enter your mobile number",
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
                      child: Text(
                        "We need to verify you. We will send you\n a one time verification code.",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 36),

                  CustomTextFormField(
                    controller: controller,
                    hintText: '012xxxxxxxx',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your phone number";
                      } else if (!isEgyptianPhone(value)) {
                        return "Enter a valid Egyptian phone number";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 46),

                  MainButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                OtpScreen(text: controller.text),
                          ),
                        );
                      }
                    },
                    text: "Next",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
