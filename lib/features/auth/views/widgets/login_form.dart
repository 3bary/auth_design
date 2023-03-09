import 'package:auth_design/constants.dart';
import 'package:auth_design/core/widgets/custom_button.dart';
import 'package:auth_design/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children:  [
          CustomTextFormField(
            validator: (data){
              if (data!.isEmpty) {
                return 'field is required';
              }
              return null;
            },
            icon: FontAwesomeIcons.user,
            hintText: 'Email or username',
            isPassword: false,
          ),
          const SizedBox(height: 24),
          CustomTextFormField(
            validator: (data){
              if (data!.isEmpty) {
                return 'field is required';
              }
              return null;
            },
            icon: Icons.lock_outlined,
            hintText: 'Password',
            isPassword: true,
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot password?',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 24),
           CustomButton(
            text: 'Log in',
            backgroundColor: kSecondaryColor,
            textColor: kPrimaryColor,
            onPressed: (){
              formKey.currentState!.validate();
            },
          ),
        ],
      ),
    );
  }
}
