import 'package:flutter/material.dart';

import 'views/constants/constants.dart';
import 'views/inputScreens/inputPage.dart';

void main() => runApp(Bmicalculator());

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({Key key}) : super(key: key);

  @override
  _BmicalculatorState createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: InputPage(),
    );
  }
}
