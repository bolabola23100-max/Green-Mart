import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_images.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/functions/validation.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/inputs/custom_text_form_field.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
import 'package:green_mart/core/widgets/inputs/password_text_form_field.dart';
import 'package:green_mart/features/auth/presentation/screens/authentication/login_screen.dart';
import 'package:green_mart/features/auth/presentation/screens/verification_screens/phone_input_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodySignUp(formKey: formKey));
  }
}

class BodySignUp extends StatelessWidget {
  const BodySignUp({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              SvgPicture.asset(AppImages.orangeCarrot),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text("Sign Up", style: TextStyles.title),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text(
                    "Enter your credentials to continue",
                    style: TextStyles.subtitle,
                  ),
                ),
              ),
              SizedBox(height: 36),

              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text("Username", style: TextStyles.subtitle),
                ),
              ),
              CustomTextFormField(
                hintText: 'Your name',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your name";
                  } else if (!isName(value)) {
                    return "Enter a valid name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),

              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text("Email", style: TextStyles.subtitle),
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
                  child: Text("Password", style: TextStyles.subtitle),
                ),
              ),
              PasswordTextFormField(),
              SizedBox(height: 12),

              MainButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    pushTo(context, PhoneInputScreen());
                  }
                },
                text: "Sign Up",
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account?",
                      style: TextStyles.caption.copyWith(fontSize: 15),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                        ),
                        onPressed: () {
                          pushReplacement(context, Login());
                        },
                        child: Text(
                          "Login",
                          style: TextStyles.caption.copyWith(
                            color: AppColors.primaryColor,
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
    );
  }
}
