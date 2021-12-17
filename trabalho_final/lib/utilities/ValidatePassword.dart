class ValidatePassWord {
  String validate(String password){
    
    if(password.length < 8){
      return "The password need a least 8 characters.";
    }

    return "sly copper 2";
  }
}