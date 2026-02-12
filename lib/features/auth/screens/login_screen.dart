import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/functions/validation.dart';
import 'package:green_mart/core/theme/colors.dart';
import 'package:green_mart/core/widgets/inputs/custom_text_form_field.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
import 'package:green_mart/core/widgets/inputs/password_text_form_field.dart';
import 'package:green_mart/features/auth/screens/signup_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 112),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  SvgPicture.asset("assets/Images/OrangeCarrot.svg"),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Text(
                        "Login",
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
                        "Enter your email and password",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 38),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    hintText: "example@gmail.com",
                    validator: (value) {
                      {
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        } else if (!isEmailValid(value)) {
                          return "Enter a valid email address";
                        }
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Text(
                        "password",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ),
                  PasswordTextFormField(),
                  Align(
                    alignment: AlignmentGeometry.topRight,
                    child: TextButton(
                      style: TextButton.styleFrom(minimumSize: Size.zero),
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  MainButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: "Log In",
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              );
                            },
                            child: Text(
                              "Sing Up",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
