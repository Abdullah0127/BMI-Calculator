import 'package:flutter/material.dart';
import 'input_page.dart';
// import 'design.dart';


void main() {
  runApp(const BMICalculater());
}

class BMICalculater extends StatelessWidget {
  const BMICalculater({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: Color(0xFF0A0D22),
      //   scaffoldBackgroundColor: Color(0xFF0A0D22),

      // ),
      debugShowCheckedModeBanner: false,
      
      home: InputPage(),
    );
  }
}


