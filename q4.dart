extension removeChar on String{
  String removeUnderscore(){
    return this.replaceAll('_','');
  }
}

void main(){

  String input = "_Mito_chondria";

  String resultString = input.removeUnderscore();

  print("Final string: $resultString");
}