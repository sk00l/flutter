
double calculateMean(List<double> numbers){

  if(numbers.isEmpty){
    return 0;
  }

  double calcSum = numbers.reduce((a, b ) => a+b);

  double mean = calcSum / numbers.length;

  return mean;  
}

void main(){
  List<double> numberList = [1.0, 2.0, 3.0, 4.0];

  double? resultMean = calculateMean(numberList);

  if(resultMean != 0){
    print("Mean: $resultMean");
  }
  else{
      print("The array is null");
  }

}
  