import 'package:bmicalculator/views/Common_widget/CalculationButton.dart';
import 'package:bmicalculator/views/Common_widget/ReusableCard.dart';
import 'package:bmicalculator/views/constants/constants.dart';
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
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.zero,
                child: Text(
                  "Your result",
                  style: kNumberstyle,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kActiveCardColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(BMIresultStatus, style: kResulttextStyle),
                          Text(BMIresult, style: kResulttextStyle),
                          Text(interpretation, style: kTextstyle),
                        ],
                      ),
                    ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
                flex: 1,
                child: CalculationButton(
                  OnPressed: () {
                    Navigator.pop(context);
                  },
                  title: "Re Calculate",)
            ),
          ],
        ));
  }
}
