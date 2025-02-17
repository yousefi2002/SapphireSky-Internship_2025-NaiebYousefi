import 'dart:io';

main(){
  print(' *** BMI Calculator ***');
  stdout.write('Enter your weight: ');
  num? weight = num.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter your height: ');
  num? height = num.tryParse(stdin.readLineSync() ?? '');
  num? heightInCM = height! / 100;

  num bmi = weight! ~/ (heightInCM * heightInCM);

  if(bmi >= 30){
    print('You are Obese with $bmi BMI.');

  }else if(bmi >= 25){
    print('You are Overweight with $bmi BMI');

  }else if(bmi >= 18.5){
    print('You are Normal weight with $bmi BMI');

  }else if(bmi < 18.5){
    print('You are Underweight with $bmi BMI');

  }else{
    print('There is something wrong.');
  }
}