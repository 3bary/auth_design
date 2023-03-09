
import 'package:auth_design/features/auth/views/widgets/actions_buttons.dart';
import 'package:auth_design/features/auth/views/widgets/circle_dot.dart';
import 'package:auth_design/features/auth/views/widgets/image_shape.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:  [
          const SizedBox(height:16),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Row(
              children:  const [
                Text(
                  'Spedah',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,color: Colors.white),
                ),
                SizedBox(width:4),
                CircleDot(),
              ],
            ),
          ),
          const ImageShape(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              children: const[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Let’s \nget started',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600,color: Colors.white),
                  ),
                ),
                SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Everything start from here',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
                  ),
                ),
                SizedBox(height: 48),
                ActionsButtons(),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
