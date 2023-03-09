
import 'package:auth_design/features/auth/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
