import 'dart:io';

enum Calculator{
  add,
  sub,
  mul,
  div,
}

double calculate(double num1, double num2, Calculator operation ){
  switch(operation){
    case Calculator.add:
      return num1 + num2;
    case Calculator.sub:
      return num1 - num2;
    case Calculator.mul:
      return num1 * num2;
    case Calculator.div:
      if(num != 0){
        return num1 / num2;
      }else{
        print("Cannot be divied by Zero");
        return double.nan;
      }     
  }
}


void main(){

  Calculator selectedOperation;

  print("enter num1:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("enter num2:");
  double num2 = double.parse(stdin.readLineSync()!);


  print("choose operation(add, sub, mul, div):");

  String calcOperation = stdin.readLineSync()!;

  switch (calcOperation){
    case 'add':
      selectedOperation = Calculator.add;
      break;
    case 'sub':
      selectedOperation = Calculator.sub;
      break; 
    case 'mul':
      selectedOperation = Calculator.mul;
      break;
    case 'div':
      selectedOperation = Calculator.div;
      break;   
    default:
      print("invalid operation.");
      return;  
  }

  double result = calculate(num1, num2, selectedOperation);
  if (!result.isNaN) {
    print("Result: $result");
  }
}

