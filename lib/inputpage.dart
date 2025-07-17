import 'package:bmi_calculator/calculatorbrain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculatepage.dart';

const double bottomcontheight = 80.0;
const activeCardColor = Color(0xFFCAC4CE);
const inactiveCardColor = Color(0xFFB0A8B2);

enum genderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}
int height = 180;
int weight = 60;
int age = 20;

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;


  genderType? selectedgenderType;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgenderType = genderType.male;
                        });
                      },
                      child: ReuseableCard(
                        colour: selectedgenderType == genderType.male
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: genderWidget(
                          colour: Color(0xFF242038),
                          gender: 'MALE',
                          ourIcon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgenderType = genderType.female;
                        });
                      },
                      child: ReuseableCard(
                        colour: selectedgenderType == genderType.female
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: genderWidget(
                          colour: Color(0xFF242038),
                          gender: 'FEMALE',
                          ourIcon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colour: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                height.toString(),
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15),
                                overlayShape:
                                    RoundSliderOverlayShape(overlayRadius: 30)),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: Slider(
                                value: height.toDouble(),
                                min: 120,
                                max: 220,
                                onChanged: (double newheight) {
                                  setState(() {
                                    height = newheight.round();
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colour: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Material(
                                elevation: 8.0,
                                shape: CircleBorder(),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      shape: CircleBorder()
                                  ),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),),
                              SizedBox(
                                width: 10,
                              ),
                              Material(
                                elevation: 8.0,
                                shape: CircleBorder(),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      shape: CircleBorder()
                                  ),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              elevation: 8.0,
                              shape: CircleBorder(),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: CircleBorder()
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Material(
                              elevation: 8.0,
                              shape: CircleBorder(),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: CircleBorder()
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),),

                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                CalculatorBrain calc = CalculatorBrain(weight: weight, height: height);

                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => CalcPage(
                      bmiresult: calc.calculatebmi(),
                      resulttext: calc.getResults(),
                      bmiinterpretation: calc.getinterpretations()
                    ),),);
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                height: bottomcontheight,
                child: Text('CALCULATE', style: TextStyle(
                  color: Colors.white,
                fontSize: 30),
                textAlign: TextAlign.center,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class genderWidget extends StatelessWidget {
  genderWidget(
      {required this.colour, required this.gender, required this.ourIcon});
  final Color colour;
  final String gender;
  final IconData ourIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ourIcon,
          size: 80,
          color: colour,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: TextStyle(fontSize: 18, color: Color(0xFF242038)),
        ),
      ],
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour, this.cardChild});
  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(15)),
    );
  }
}
