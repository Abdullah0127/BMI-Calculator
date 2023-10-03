import 'package:bmi_calculater/constant.dart';
// import 'package:bmi_calculater/input_page.dart';
import 'package:bmi_calculater/reuseble_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculater/bottom_button.dart';
// import 'package:bmi_calculater/reuseble_card.dart';

class ResultsPage extends StatelessWidget {
  
  ResultsPage({required this.resultText, required this.bmiResult, required this.interpretation});

  final String resultText;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF0A0D22),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        title: Text('BMI Calculator',),
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              
              child: Text('Your Result', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white), ),
            ),
          ),
      
          Expanded(
            flex: 5,
            child: ReusableCard(Colour: setColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text( resultText ,
                   style: TextStyle(fontSize: 30, color: Colors.white),),
                  SizedBox(height: 20,),
                  Text(bmiResult, style: TextStyle(fontSize: 30,color: Colors.white)),
                   SizedBox(height: 20,),
                  Text(interpretation, style: TextStyle(fontSize: 30,color: Colors.white)),
                ],

                
            ),
            ),

            
            
           
          ),

          bottomButton(Bottomtext: 'RE-CALCULATOR',onTap: (){
            Navigator.pop(context);
          }, )
         
        ],
      )
    );
  }
}