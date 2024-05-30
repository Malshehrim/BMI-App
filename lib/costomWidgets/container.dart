import 'package:flutter/material.dart';

class Ccontiner extends StatelessWidget {
  const Ccontiner({
    super.key,
    this.cardChild,
    this.onTap1,
    this.color,
  });
  final Color? color;

  final void Function()? onTap1;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap1,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
