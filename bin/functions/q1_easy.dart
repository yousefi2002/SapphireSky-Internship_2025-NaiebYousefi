void main(){
  num degreeCelsius = 16;

  print(celsiusToFahrenheit(degreeCelsius));

}

num celsiusToFahrenheit(num degreeCelsius){

  num fahrenheit = (degreeCelsius * 9/5) + 32;
  return fahrenheit;
}