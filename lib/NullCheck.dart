int checkValue(int? someValue) {
  if (someValue == null){
    return 0;
  }
  return someValue.abs();
}


void main(){

print(checkValue(5));
print(checkValue(null));

  // int? age =  null; //int becomes nullable and nom-nullable
  //
  // String? name = null;

}