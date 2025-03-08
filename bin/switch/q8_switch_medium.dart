import 'dart:io';

class ATM {
  double _balance;

  ATM(this._balance);

  void checkBalance() {
    print("Your current balance is: \$${_balance.toStringAsFixed(2)}");
  }

  void withdrawMoney() {
    stdout.write("Enter amount to withdraw: ");
    double? amount = double.tryParse(stdin.readLineSync() ?? '');
    if (amount == null || amount <= 0) {
      print("Invalid amount!");
      return;
    }
    if (amount > _balance) {
      print("Insufficient funds!");
      return;
    }
    _balance -= amount;
    print("Withdrawal successful! New balance: \$${_balance.toStringAsFixed(2)}");
  }

  void depositMoney() {
    stdout.write("Enter amount to deposit: ");
    double? amount = double.tryParse(stdin.readLineSync() ?? '');
    if (amount == null || amount <= 0) {
      print("Invalid amount!");
      return;
    }
    _balance += amount;
    print("Deposit successful! New balance: \$${_balance.toStringAsFixed(2)}");
  }

  void showMenu() {
    while (true) {
      print("\n=== ATM Menu ===");
      print("1 → Check Balance");
      print("2 → Withdraw Money");
      print("3 → Deposit Money");
      print("4 → Exit");
      stdout.write("Enter your choice: ");

      String? choice = stdin.readLineSync();

      switch (choice) {
        case '1':
          checkBalance();
          break;
        case '2':
          withdrawMoney();
          break;
        case '3':
          depositMoney();
          break;
        case '4':
          print("Thank you for using the ATM. Goodbye!");
          return;
        default:
          print("Invalid choice! Please select a valid option.");
      }
    }
  }
}

void main() {
  ATM atm = ATM(1000.00); // Initial balance
  atm.showMenu();
}
