import 'package:auth_design/constants.dart';
import 'package:flutter/material.dart';

class CircleDot extends StatelessWidget {
  const CircleDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width:10,
      height:10,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: kSecondaryColor
      ),
    );
  }
}
