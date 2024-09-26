void main(){

  //input is a nullable string, check if input is null at the moment and print accordingly.
  String? input;
  String message;

  if (input != null){
    message = input;
  } else {
    message = 'Error';
  }
  print(message);
}