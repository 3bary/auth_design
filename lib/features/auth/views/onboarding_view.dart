import 'package:auth_design/constants.dart';
import 'package:auth_design/features/auth/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: OnboardingViewBody(),
      ),
    );
  }
}
