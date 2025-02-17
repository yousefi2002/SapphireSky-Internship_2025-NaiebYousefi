import 'dart:io';
// ---------------------------- leap year checker --------------------------- //

main(){

 try{
   print('Enter a year to check out is it leap or normal year.');
   stdout.write('#_ Year: ');

   int? year = int.tryParse(stdin.readLineSync() ?? '0');

   if (year! % 4 == 0){
     print('$year is a leap year 🎉');

   }else{
     print('$year is not a leap year 😒');

   }
 }catch(e){
   print('You have entered non valid year!');
 }
}