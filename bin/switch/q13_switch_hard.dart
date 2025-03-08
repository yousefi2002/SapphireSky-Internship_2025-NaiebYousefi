import 'dart:io';

discountSystem(String userOption){
  switch (userOption) {
    case 'gold':
      return 0.5;
    case 'silver':
      return 0.3;
    case 'bronze':
      return 0.1;
    default:
      return 0;
  }
}
void main(){
  print('Enter membership type ("Gold", "Silver", "Bronze").');
  stdout.write('Membership type: ');
  String option = stdin.readLineSync() ?? '';

  stdout.write('Purchase amount: ');
  num purchaseAmount = num.tryParse( stdin.readLineSync() ?? '')!;

  num discount = discountSystem(option.toLowerCase()) ?? '';
  num percentage = (discount * purchaseAmount);

  num result = (purchaseAmount - percentage);
  print('$result');
}