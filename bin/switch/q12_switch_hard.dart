import 'dart:io';

String getZodiacSign(int month, int day) {
  switch (month) {
    case 1:
      if (day >= 1 && day <= 19) return "Capricorn";
      if (day >= 20 && day <= 31) return "Aquarius";
      break;
    case 2:
      if (day >= 1 && day <= 18) return "Aquarius";
      if (day >= 19 && day <= 29) return "Pisces"; // Considering leap year (max 29 days)
      break;
    case 3:
      if (day >= 1 && day <= 20) return "Pisces";
      if (day >= 21 && day <= 31) return "Aries";
      break;
    case 4:
      if (day >= 1 && day <= 19) return "Aries";
      if (day >= 20 && day <= 30) return "Taurus";
      break;
    case 5:
      if (day >= 1 && day <= 20) return "Taurus";
      if (day >= 21 && day <= 31) return "Gemini";
      break;
    case 6:
      if (day >= 1 && day <= 20) return "Gemini";
      if (day >= 21 && day <= 30) return "Cancer";
      break;
    case 7:
      if (day >= 1 && day <= 22) return "Cancer";
      if (day >= 23 && day <= 31) return "Leo";
      break;
    case 8:
      if (day >= 1 && day <= 22) return "Leo";
      if (day >= 23 && day <= 31) return "Virgo";
      break;
    case 9:
      if (day >= 1 && day <= 22) return "Virgo";
      if (day >= 23 && day <= 30) return "Libra";
      break;
    case 10:
      if (day >= 1 && day <= 22) return "Libra";
      if (day >= 23 && day <= 31) return "Scorpio";
      break;
    case 11:
      if (day >= 1 && day <= 21) return "Scorpio";
      if (day >= 22 && day <= 30) return "Sagittarius";
      break;
    case 12:
      if (day >= 1 && day <= 21) return "Sagittarius";
      if (day >= 22 && day <= 31) return "Capricorn";
      break;
    default:
      return "Invalid month!";
  }
  return "Invalid day!";
}

void main() {
  stdout.write("Enter birth month (1-12): ");
  int? month = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Enter birth day (1-31): ");
  int? day = int.tryParse(stdin.readLineSync() ?? '');

  if (month == null || month < 1 || month > 12 || day == null || day < 1 || day > 31) {
    print("Invalid input! Please enter a valid month (1-12) and day (1-31).");
  } else {
    String zodiac = getZodiacSign(month, day);
    print("Your zodiac sign is: $zodiac");
  }
}
