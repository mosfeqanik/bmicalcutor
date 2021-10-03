import 'package:bmicalculator/views/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icondetail;
  final Function OnPressed;
  RoundIconButton({@required this.icondetail,this.OnPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        // child: icondetail(Colors.white),
        child: Icon(icondetail,color: Colors.white),
        elevation: 5,
        constraints: BoxConstraints.tightFor(
          width: 50,
          height: 50,
        ),

        fillColor: Color(0xff4C4F5E),
        onPressed: OnPressed);
  }
}
