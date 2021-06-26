import 'package:bmicalculator/constants/constants.dart';
import 'package:flutter/cupertino.dart';

class CalculationButton extends StatelessWidget {

  final Function OnPressed;
  final String title;

  CalculationButton({this.OnPressed, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPressed,
      child: Container(
        child: Center(child: Text(title, style: KbuttonStyle)),
        color: kActiveCardColor,
        margin: EdgeInsets.all(8),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
