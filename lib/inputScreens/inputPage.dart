import 'package:bmicalculator/Common_widget/Iconcontent.dart';
import 'package:bmicalculator/Common_widget/ReusableCard.dart';
import 'package:bmicalculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 120;

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
                              height =newValue.round();

                            });
                          })
                    ],
                  ),
              ),
              ),
            // ),
            Expanded(
                child: Row(
              children: [
                reusableCard(
                  color: kDisableColor,
                  cardChild: Column(
                    children: [
                      Text(
                        "weight",
                        style: kTextstyle,
                      ),
                      Text(
                        '89',
                        style: kNumberstyle,
                      )
                    ],
                  ),
                ),
                reusableCard(
                  onPressed: () {
                    print('last row right side is clicked');
                  },
                  color: kDisableColor,
                  cardChild: Iconcontent(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                )
              ],
            )),
          ],
        ));
  }
}
