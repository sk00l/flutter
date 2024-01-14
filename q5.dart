 import 'dart:io';
 
 extension intExtension on int{

  int cube(){
    return this * this * this;
  }
 }

 void main(){

  print("enter a number:");

  int aNumber = int.parse(stdin.readLineSync()!);

  int result = aNumber.cube();
  print('Cube of $aNumber is $result');
 } 