// import 'dart:js_util';

import 'package:bmi_calculater/calculator_brain.dart';
import 'package:bmi_calculater/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculater/icon_content.dart';
import 'package:bmi_calculater/reuseble_card.dart';
import 'package:bmi_calculater/constant.dart';
import 'package:bmi_calculater/round_iconbutton.dart';
import 'package:bmi_calculater/bottom_button.dart';





enum Gender {
    Male, Female;
  }


class InputPage extends StatefulWidget {
  const InputPage({super.key});
 
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  // Gender genderselected=Gender.Male;

  Color maleColor = setColour;
  Color femaleColor = setColour;

  int height=180;
  int Weight= 80;
  int age= 80;
  double bmi=0;


  

  void updatecolor (Gender gender){
    if(gender==Gender.Male){
      if(maleColor==setColour){
        maleColor=newColor;
        femaleColor=setColour;
      }else{
        maleColor=setColour;
      }
    }

    if(gender==Gender.Female){
      if(femaleColor==setColour){
        femaleColor=newColor;
        maleColor=setColour;
      }else{
        femaleColor=setColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0D22),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        title: Center(child: Text('BMI Calculator',)),
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updatecolor(Gender.Male);
                      });
                    },
                    child: ReusableCard(Colour:maleColor,
                    cardChild: IconContent(FontAwesomeIcons.mars, 'MALE',) ,),
                  ),
                  
                  
                ),
          
                Expanded(
                   child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updatecolor(Gender.Female);
                      });
                    },
                    child: ReusableCard(Colour: femaleColor,
                    cardChild: IconContent( FontAwesomeIcons.venus,  'FEMALE',),)),
                ),
                
              ],
            ),
          ),

          Expanded(
            child: ReusableCard(
              
              Colour: setColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height', style: TextStyle(color: Colors.white, fontSize: 18),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: TextStyle(color: Colors.white, fontSize: 40),),
                      Text('cm', style:TextStyle(color: Colors.white, fontSize: 18),)
                    ],
                  ),
                  SliderTheme(data: SliderTheme.of(context).copyWith(
                    thumbColor: Colors.red,
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius:30.0 )
                  ), child:
                  Slider(value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                 
                  
                   onChanged: (double newValue){
                    setState(() {
                      height=newValue.round();
                    });
                    
                   })
               ) ]
                
              ),
              ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Colour: setColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text(Weight.toString(), style: TextStyle(color: Colors.white, fontSize: 40)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundiconButton(icon: Icon(FontAwesomeIcons.minus), onPressed:(){
                            setState(() {
                              Weight--;
                            });
                          } ,),
                          SizedBox(width: 10,),
                          RoundiconButton(icon: Icon(FontAwesomeIcons.plus),onPressed: (){
                            setState(() {
                              Weight++;
                            });
                          },),
                        ],
                      )
                    ],
                  ),
                  
                  ),
                  
                ),
          
                Expanded(
                  child: ReusableCard(Colour: setColour,
                   cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text(age.toString(), style: TextStyle(color: Colors.white, fontSize: 40)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundiconButton(icon: Icon(FontAwesomeIcons.minus),onPressed: (){
                            setState(() {
                              age--;
                            });
                          },),
                          SizedBox(width: 10,),
                          RoundiconButton(icon: Icon(FontAwesomeIcons.plus ),onPressed: (){
                            setState(() {
                              age++;
                            });
                          },),
                        ],
                      )
                    ],
                  ),
                  ),
                ),
                
              ],
            ),
          ),

          bottomButton(Bottomtext: 'Calculator', onTap: (){

            Calculatorbrain calc = Calculatorbrain(height, Weight, bmi);

            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ResultsPage(
                bmiResult: calc.calculatorBMI(),
                resultText: calc.getresult(),
                interpretation: calc.getInterpretation(),
              );
            }));
          },)
        ],
      ),


      // floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),backgroundColor: Color.fromARGB(255, 100, 114, 218),),
    );
  }
}








