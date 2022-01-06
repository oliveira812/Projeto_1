import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trabalho_final/routes/signup_screen.dart';
import 'package:trabalho_final/routes/welcome_screen.dart';
<<<<<<< HEAD
=======
import 'package:trabalho_final/utilities/ReadStoredData.dart';
>>>>>>> parent of 413e39a (teste debug)
import 'package:trabalho_final/utilities/constants.dart';
import 'package:trabalho_final/components/body.dart';
import 'package:trabalho_final/utilities/global_variables.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => new _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: <Widget>[
        Opacity(
          opacity: 0.2,
          child: Container(
            height: size.height,
            width:
                double.infinity, // é a mesma coisa que o mediaQuery.of(context)
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/login.jfif"),
                    fit: BoxFit.cover)),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: corPrimaria,
                      fontSize: 20),
                ),
              ),
              Container(
                width: 276,
                height: 224,
                alignment: Alignment.center,
                child: Image.asset("assets/images/image_not_found.png"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Email",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: 390,
                    height: 65,
                    decoration: BoxDecoration(
                        color: null,
                        border: Border.all(color: corPrimaria, width: 1),
                        borderRadius: BorderRadius.horizontal()),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color:
                                Colors.grey[200]), //altera a cor do hint text
                        hintText: "Insira aqui o seu email",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  corPrimaria), //quando se carrega muda a cor inferior dentro da textbox
                        ),
                      ),
                    ),
                  ),
                  //----------------------------------------------------------------------
                  //----------------------------------------------------------------------
                  // error mensangem
                  Text(
                    erroEmailMensagem,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Password",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: 390,
                    height: 65,
                    decoration: BoxDecoration(
                        color: null,
                        border: Border.all(color: corPrimaria, width: 1),
                        borderRadius: BorderRadius.horizontal()),
                    child: TextField(
                      obscureText: true, //não mostra a password
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey[200]),
                        hintText: "Insira aqui a sua Password",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  corPrimaria), //quando se carrega muda a cor inferior dentro da textbox
                        ),
                      ),
                    ),
                  ),
                  //--------------------------------------------------------------------
                  //----------------------------------------------------------------------
                  // error mensangem
                  Text(
                    erroPasswordMensagem,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                width: 100,
                height: 100,
                child: ElevatedButton(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text("Sign In"),
                  ), // para o texto caber todo dentro do button sem quebrar
                  onPressed: login,
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                        width: 2, color: corPrimaria), //border do button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: corPrimaria.withOpacity(0),
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // ------------------------------------------------------
              // ------------------------------------------------------
              //apaga depois isto
              ElevatedButton(
                child: Text("home"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WelcomeScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  primary: corPrimaria,
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

<<<<<<< HEAD

  login(){
    setState(() {
      erroEmailMensagem = "jojo";
      erroPasswordMensagem = "jooooooooooooooooojo";
=======
  // return the email key
  readStoreEmail(emailKey) async {
    final loadData = await SharedPreferences.getInstance();
    var savedData = loadData.getString(emailKey);
    var data = savedData.toString();
    return  data;
  }

    readStorePassword(passwordKey) async {
    final loadData = await SharedPreferences.getInstance();
    var savedData = loadData.getString(passwordKey);
    var data = savedData.toString(); 
    return data;
  }

  login() {
    setState(() {
      errorEmailMensagem = "";
      errorPasswordMensagem = "";
      var email = emailTextController.text;
      var password = passwordTextController.text;
      var validEmail = validMail(email);
      var validPass = validPassword(password);
      // ReadStoredData readStoredData = new ReadStoredData();
      var compareEmail = "";
      var comparePassword = "";

      // see if the email is valid
      if (validEmail != "validEmail") {
        errorEmailMensagem = validEmail;
      }

      // see if the password is valid
      if (validPass != "validPassword") {
        errorPasswordMensagem = validPass;
      }

      if (validEmail == "validEmail" && validPass == "validPassword") {
        compareEmail = readStoreEmail("userEmail");
        comparePassword = readStorePassword("userPassword");

        errorEmailMensagem = compareEmail;
        errorPasswordMensagem = comparePassword;
      }
>>>>>>> parent of 413e39a (teste debug)
    });
  }


  
}
