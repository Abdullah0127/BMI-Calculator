import 'package:flutter/material.dart';
import 'package:bmi_calculater/constant.dart';

class bottomButton extends StatelessWidget {

  bottomButton({required this.onTap, required this.Bottomtext});
  
  final  onTap;
  final String Bottomtext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        
        child: Center(child: Text(Bottomtext),
        
        //  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white )
         ),
        color: setColour2 ,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: setHeight ,
      ),
    );
  }
}