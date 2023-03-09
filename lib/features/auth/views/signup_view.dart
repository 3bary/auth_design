import 'package:auth_design/features/auth/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignupViewBody(),
      ),
    );
  }
}
