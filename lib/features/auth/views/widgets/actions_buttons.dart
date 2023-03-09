import 'package:auth_design/constants.dart';
import 'package:auth_design/core/utils/app_router.dart';
import 'package:auth_design/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        CustomButton(
          text: 'Log in',
          backgroundColor: kSecondaryColor,
          textColor: kPrimaryColor,
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kLoginView);
          },
        ),
        const SizedBox(height: 16,),
        CustomButton(
          text: 'Sign up',
          backgroundColor: const Color(0xffD5E7D4),
          textColor: kPrimaryColor,
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSignupView);
          },
        ),
      ],
    );
  }
}
