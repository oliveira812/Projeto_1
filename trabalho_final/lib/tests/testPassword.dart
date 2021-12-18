import 'package:trabalho_final/utilities/ValidatePassword.dart';

void main() {
  List<String> testPassword = [
    "a", // check if the password have 8 or more characters
    "SLYCOPPER",   // check if password have a lowercase letter 
    "slycopper",   // check if password have a upercase letter
    "slyCopper",   // check if password have a number
    "slyCopper2",  // check if password have a special character
    "slyCopper5?"  // it a valid password
  ];

  ValidatePassWord validatePassWord = new ValidatePassWord();
  testPassword.forEach((test) {
    print(validatePassWord.validate(test));
  });
}
