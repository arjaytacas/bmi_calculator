import 'package:flutter/material.dart';

class CalcPage extends StatelessWidget {
  CalcPage ({required this.bmiresult, required this.resulttext, required this.bmiinterpretation});

  final String bmiresult;
  final String resulttext;
  final String bmiinterpretation;

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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back, size: 25,)),
          title: Text('BMI CALCULATOR',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 30),
                child: Text('Your Result',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w900
                ),)),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 15, left: 15,right: 15),
                decoration:
                BoxDecoration(
                    color: Color(0xFFCAC4CE),
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Center(child: Text(resulttext, style:
                        TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.w500
                        ),),),),
                      Expanded(child: Center(child: Text(bmiresult,
                      style: TextStyle(
                        fontSize: 70
                      ),),),),
                      Expanded(child: Center(child: Text(bmiinterpretation,
                      style: TextStyle(
                        fontSize: 25
                      ),),),)
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                height: 80,
                child: Text('RE-CALCULATE', style: TextStyle(
                    color: Colors.white,
                    fontSize: 30),
                  textAlign: TextAlign.center,),
              ),
            )
          ],
        ),
      ),
    );}}
