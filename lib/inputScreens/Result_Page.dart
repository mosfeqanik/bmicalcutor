import 'package:bmicalculator/Common_widget/CalculationButton.dart';
import 'package:bmicalculator/Common_widget/ReusableCard.dart';
import 'package:bmicalculator/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final String BMIresult;
  final String BMIresultStatus;
  final String interpretation;

  ResultPage({@required this.BMIresult,@required this.BMIresultStatus,@required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('result'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.zero,
                child: Text(
                  "Your result",
                  style: kNumberstyle,
                ),
              ),
            ),
            reusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(BMIresultStatus, style: kResulttextStyle),
                  Text(BMIresult, style: kResulttextStyle),
                  Text(interpretation, style: kTextstyle),

                  SizedBox(height: 10),

                  CalculationButton(
                    OnPressed: (){
                      Navigator.pop(context);
                    },
                    title: "Re Calculate",)
                ],
              ),
            )],
        ));
  }
}
