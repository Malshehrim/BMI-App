import 'package:flutter/material.dart';

const Color textColor = Color(0xff8d8e98);

class CIcon extends StatelessWidget {
  const CIcon({
    super.key,
    this.icon,
    this.text,
  });

  final IconData? icon;
  final String? text;
  //final textStyle =

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(height: 15.0),
        Text(
          '$text',
          style: const TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        )
      ],
    );
  }
}
