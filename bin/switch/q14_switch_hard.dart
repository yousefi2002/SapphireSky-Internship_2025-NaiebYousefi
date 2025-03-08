import 'dart:io';

double getTollFee(String vehicleType) {
  switch (vehicleType.toLowerCase()) {
    case 'car':
      return 5.0;
    case 'truck':
      return 10.0;
    case 'bike':
      return 2.0;
    default:
      print("Invalid vehicle type. No toll fee applied.");
      return 0.0;
  }
}

void main() {
  stdout.write("Enter vehicle type (Car, Truck, Bike): ");
  String vehicleType = stdin.readLineSync()?.trim() ?? "";

  double tollFee = getTollFee(vehicleType.toLowerCase());
  print("Toll fee: \$${tollFee.toStringAsFixed(2)}");
}
