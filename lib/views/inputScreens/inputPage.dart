import 'package:bmicalculator/views/Common_widget/CalculationButton.dart';
import 'package:bmicalculator/views/Common_widget/Iconcontent.dart';
import 'package:bmicalculator/views/Common_widget/ReusableCard.dart';
import 'package:bmicalculator/views/Common_widget/round_icon_button.dart';
import 'package:bmicalculator/Modals/Calculator.dart';
import 'package:bmicalculator/views/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Result_Page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender selectedgender;

  int height = 120;
  int weight = 89;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  reusableCard(
                    onPressed: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    color: selectedgender == Gender.male
                        ? kActiveCardColor
                        : kDisableColor,
                    cardChild: Iconcontent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                  reusableCard(
                    onPressed: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                      print('female is clicked');
                    },
                    color: selectedgender == Gender.female
                        ? kActiveCardColor
                        : kDisableColor,
                    cardChild: Iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              // child: reusableCard(
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kDisableColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  // cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "height",
                      style: kTextstyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberstyle,
                        ),
                        Text(
                          'cm',
                          style: kTextstyle,
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        activeColor: kActiveCardColor,
                        inactiveColor: ktextColor,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        })
                  ],
                ),
              ),
            ),
            // ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                reusableCard(
                  color: kDisableColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: kTextstyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // RoundIconButton(Icon(Icons.remove)),
                          RoundIconButton(
                              icondetail: FontAwesomeIcons.plus,
                              OnPressed: () {
                                setState(() {
                                  weight++;
                                });
                              }),
                          SizedBox(width: 10),
                          RoundIconButton(
                              icondetail: FontAwesomeIcons.minus,
                              OnPressed: () {
                                setState(() {
                                  weight--;
                                });
                              }),
                          // RoundIconButton(Icon(Icons.add)),
                        ],
                      )
                    ],
                  ), //WEIGHT COlUM
                ),
                reusableCard(
                  color: kDisableColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: kTextstyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // RoundIconButton(Icon(Icons.remove)),
                          RoundIconButton(
                              icondetail: FontAwesomeIcons.plus,
                              OnPressed: () {
                                setState(() {
                                  age++;
                                });
                              }),
                          SizedBox(width: 10),
                          RoundIconButton(
                              icondetail: FontAwesomeIcons.minus,
                              OnPressed: () {
                                setState(() {
                                  age--;
                                });
                              }),
                          // RoundIconButton(Icon(Icons.add)),
                        ],
                      )
                    ],
                  ), //AGE Column
                ),
              ],
            )),
            CalculationButton(
              OnPressed: () {
                Calculator cal = Calculator( height,weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            BMIresult: cal.getBmiResult(),
                            BMIresultStatus: cal.getStatus(),
                            interpretation: cal.getInterpretation()
                    )));
              },
              title: "Calculate",
            )
          ],
        ));
  }
}
