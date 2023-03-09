import 'package:auth_design/constants.dart';
import 'package:auth_design/core/widgets/custom_button.dart';
import 'package:auth_design/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? password;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextFormField(
              validator: (data) {
                if (data!.isEmpty) {
                  return 'field is required';
                }
                return null;
              },
              icon: FontAwesomeIcons.user,
              hintText: 'Username',
              isPassword: false,
            ),
            const SizedBox(height: 24),
            CustomTextFormField(
              validator: (data) {
                if (!(data!.contains('@'))) {
                  return 'email is not true';
                }
                return null;
              },
              icon: FontAwesomeIcons.envelopeOpen,
              hintText: 'Email address',
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
              onChanged: (data){
                password = data;
              },
              icon: Icons.lock_outlined,
              hintText: 'Password',
              isPassword: true,
            ),
            const SizedBox(height: 24),
             CustomTextFormField(
              validator: (data){
                if(data != password){
                  return 'not correct';
              }
                return null;
                },
              icon: Icons.lock_outlined,
              hintText: 'Confirm password',
              isPassword: true,
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Sign up',
              backgroundColor: kSecondaryColor,
              textColor: kPrimaryColor,
              onPressed: (){
                formKey.currentState!.validate();
              },
            ),
          ],
        ));
  }
}
