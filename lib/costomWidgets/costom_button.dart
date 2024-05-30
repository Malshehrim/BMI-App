import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key,
      // this.child,
      this.icon,
      this.onTap});
  //final Widget? child;
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      disabledElevation: 6,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      onPressed: onTap,
      //child: child,

      child: Icon(icon),
    );
  }
}
