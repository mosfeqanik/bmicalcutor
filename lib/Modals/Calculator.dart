import 'dart:math';

class Calculator{
  int height;
  int weight;
  double bmi;

  Calculator({this.height,this.weight});

  String BmiResult(){
    //dividing 100 for meter to cm
    bmi = weight/ pow(height/100,2);
    this.bmi=bmi;
    return bmi.toStringAsFixed(1);
  }

  String getStatus(){
    if(bmi>=25){
      return 'Overweight';
    }else if(bmi>18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(bmi>=25){
      return 'You have a higher than normal body.\n Try to exercise more';
    }else if(bmi>18.5){
      return 'You have a normal body weight.\n Good job!';
    }else {
      return 'You have a lower than normal body.\n You can eat a bit more';
    }
  }

}