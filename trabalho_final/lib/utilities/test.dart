import 'package:trabalho_final/utilities/ValidatePassword.dart';

void main(){

  String pass = "";

  ValidatePassWord validatePassWord = new ValidatePassWord();
  print(validatePassWord.validate(pass));

}