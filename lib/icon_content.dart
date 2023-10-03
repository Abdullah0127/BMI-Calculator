import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {

  IconContent(this.icon, this.label);
  final IconData  icon;
  final String label;
 
 


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Icon(
       icon,
       color: Colors.white,
        size: 80.0,
       ),
       SizedBox(
        height: 10,
       ),
       Text(label,
       style: TextStyle(color: Colors.white),),
      ],
    );
  }
}