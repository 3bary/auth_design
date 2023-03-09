import 'package:auth_design/constants.dart';
import 'package:auth_design/core/utils/assets.dart';
import 'package:auth_design/core/widgets/custom_button_icon.dart';
import 'package:auth_design/features/auth/views/widgets/arrow_back_button.dart';
import 'package:auth_design/features/auth/views/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const ArrowBackButton(),
            const SizedBox(height: 36),
            const Text(
              'Welcome back',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor),
            ),
            const SizedBox(height: 16),
            const Text(
              'Enter your credential to continue',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff879EA4)),
            ),
            const SizedBox(height: 36),
            const LoginForm(),
            const SizedBox(height: 16),
            const CustomButtonIcon(
              text: 'Log in using Apple',
              backgroundColor: Colors.black,
              textColor: Colors.white,
              onPressed: null,
              icon: Icon(
                FontAwesomeIcons.apple,
                size: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            const CustomButtonIcon(
              text: 'Log in using Google',
              backgroundColor: Color(0xffF0F5F2),
              textColor: kPrimaryColor,
              onPressed: null,
              icon: Image(image: AssetImage(kGoogleLogo)),
            ),
            const SizedBox(height: 145),
            Center(
                child: RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 14, color: kPrimaryColor),
                children: [
                  TextSpan(
                    text: 'Don’t have account? ',
                  ),
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                      decorationColor: kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            ),
            const SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
