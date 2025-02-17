
import 'dart:io';

main(){
  try{
    final atm = WithdrawATM();
    print('<------------------- welcome to our ATM ------------------------->');
    print(''' \$\$\$  Our Services  \$\$\$
1). Check Balance
2). Withdraw Balance  
3). Close 
    ''');
    stdout.write('Your Option: ');
    int? option = int.tryParse(stdin.readLineSync() ?? '');

    while(option != 3){
      switch(option){
        case 1:
          atm.checkBalance();
          print('--------------------------------------------------------------');
          print(''' \$\$\$  Our Services  \$\$\$
1). Check Balance
2). Withdraw Balance  
3). Close 
    ''');
          stdout.write('Your Option: ');
          option = int.tryParse(stdin.readLineSync() ?? '');

        case 2:
          stdout.write('Enter the amount you want to withdraw from your account: ');
          double? money = double.tryParse(stdin.readLineSync() ?? '');
          atm.withdrawMoney(money!);
          print('--------------------------------------------------------------');
          print(''' \$\$\$  Our Services  \$\$\$
1). Check Balance
2). Withdraw Balance  
3). Close 
    ''');
          stdout.write('Your Option: ');
          option = int.tryParse(stdin.readLineSync() ?? '');
        default:
          print('You have entered the wrong option!');
          print(''' \$\$\$  Our Services  \$\$\$
1). Check Balance
2). Withdraw Balance  
3). Close 
    ''');
          stdout.write('Your Option: ');
          option = int.tryParse(stdin.readLineSync() ?? '');
      }
    }
    print('Program Finished.');
  }catch(e){
    print('You have entered non valid value. 😠');
  }
}

class WithdrawATM{

  double balance = 10000000;

  void withdrawMoney(double money){
    if(money % 10 == 0  && money < balance){
      balance -= money;
      print('You have withdraw \$$money  successfully 🤑🤑🤑');

    }else if(money % 10 != 0){
      print('''
      Incorrect Amount !!!
      The withdrawal amount should be multiple of 10.
      ''');

    }else if(money > balance){
      print('Oops, Insufficient Funds...');

    }
  }

  void checkBalance(){
    print('Your balance is: $balance');
  }

}