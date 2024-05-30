import 'package:bmi/costomWidgets/constants.dart';

import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, this.onClick, required this.text});

  final void Function()? onClick;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        // padding: const EdgeInsets.only(bottom: 20),
        color: kbottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kbottomContainerHeight,
        child: Center(
          child: Text(text, style: kTextBig),
        ),

        // height: double.infinity,
      ),
    );
  }
}
