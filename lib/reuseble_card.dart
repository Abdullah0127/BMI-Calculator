// import 'package:bmi_calculater/input_page.dart';
import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {

 const ReusableCard({ required this.Colour,  this.cardChild , });
  
 final Color Colour;
 final Widget? cardChild;
//  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        
        
        decoration: BoxDecoration(
          
          color: Colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
        
      ),
    );
  }
}