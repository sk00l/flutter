import 'dart:io';

checkPalindrom(int number){
  String numToString = number.toString();


  return numToString == numToString.split('').reversed.join();
}

void main(){
  print("enter a number:");
  int stoNum = int.parse(stdin.readLineSync()!);

  if(checkPalindrom(stoNum)){
    print("$stoNum is palindrome");
  }else{
    print("$stoNum is not");
  }

}