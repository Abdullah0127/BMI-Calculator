// import 'package:flutter/material.dart';
import 'dart:math';


class Calculatorbrain{
Calculatorbrain(this.Height, this.Weight, this.bmi );

final int Height;
final int Weight;

double bmi;

String calculatorBMI(){
   bmi = Weight / pow(Height/100, 2);
   return bmi.toStringAsFixed(1);
}

String getresult(){
  if(bmi>=25){
    return 'Overweight';
  }else if(bmi>18){
  return 'Normal';
}else {
  return 'Underweighted';
}
}
String getInterpretation(){
  if(bmi>=25){
    return 'You have a higher than normal body weight';
  }else if(bmi>18){
  return 'You have a Normal body weight';
}else {
  return 'You have a lower than normal body weight';
}
}

}


