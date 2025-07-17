import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF242038),
        scaffoldBackgroundColor: Color(0xFFF7ECE1),
        appBarTheme: AppBarTheme(
          color: Color(0xFF242038),
          iconTheme: IconThemeData(color: Color(0xFFF7ECE1),),
          titleTextStyle: TextStyle(color: Color(0xFFF7ECE1))
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF9067C6),
          secondary: Color(0xFF8D86C9),
          surface: Color(0xFFF7ECE1),
          onSurface: Color(0xFF242038)
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFF9067C6),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: InputPage(),
    );
  }
}



