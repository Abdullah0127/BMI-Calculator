import 'package:flutter/material.dart';

class RoundiconButton extends StatelessWidget {
  const RoundiconButton({super.key, required this.icon, required this.onPressed});

  final Widget icon;
  final  onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
    onPressed: onPressed,
    child: icon,
    shape: CircleBorder(),
    elevation: 0.0,
    constraints: BoxConstraints.tightFor(
      width: 56,
      height: 56,
    ),
    fillColor: Color(0xFF4C4F5E),
    );
  }
}