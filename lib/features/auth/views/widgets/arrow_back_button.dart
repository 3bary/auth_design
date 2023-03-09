import 'package:auth_design/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  IconButton(icon : const Icon(FontAwesomeIcons.arrowLeft,size: 32,),color: kPrimaryColor, onPressed: () {
      GoRouter.of(context).pop();
    },);
  }
}
