import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {Key? key,
      required this.icon,
      required this.hintText,
      required this.isPassword})
      : super(key: key);
  final IconData icon;
  final String hintText;
  final bool isPassword;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    bool obscurePassword = widget.isPassword ? true : false;
    return TextFormField(
      obscureText: obscurePassword,
      style: const TextStyle(
          color: Color(0xff1F5460), fontSize: 16, fontWeight: FontWeight.w400),
      cursorColor: const Color(0xff879EA4),
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Color(0xff879EA4)),
          prefixIcon: Icon(
            widget.icon,
            color: const Color(0xff96A7AF),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
            onPressed: () {
              setState(() {
                obscurePassword = !obscurePassword;
              });
            },
            icon: const Icon(Icons.remove_red_eye_outlined,color: Color(0xff96A7AF),),
          )
              : null
              ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: const Color(0xff1F5460).withOpacity(0.2),
      ),
      borderRadius: BorderRadius.circular(4.0),
    );
  }
}
