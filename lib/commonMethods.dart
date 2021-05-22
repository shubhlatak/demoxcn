import 'package:flutter/material.dart';
import 'package:xcrino_flutter_app/WelcomePage2.dart';

var facebookIcon = "assets/facebook_icon.png";
var twitterIcon = "assets/twitter_circle_icon.png";
var googleIcon = "assets/google+_icon.png";
var usernameLabel = "Username";
var passwordLabel = "Password";
var forgotPasswordText = 'Forgot your password?';
var dontHaveAccountText = "Don't have an account?";
var signUpText = " Sign up";
var signInToContinue = 'Sign in to continue';
var welcomeBackText = 'Welcome Back!';
var profilePic = "assets/profilePic.jpeg";

  myAppBar(){
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {
        // Navigator.pop(context);
      },
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
  );
  }

  socialMediaButtons(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 58,
        width: 58,
        child: Image.asset(imagePath,
            fit: BoxFit.cover),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.red,
        ),
      ),
    );
  }

  usernameField(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 50.0, 18.0, 0.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: usernameLabel,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 19.0,
          ),
        ),
      ),
    );
  }

  passwordField(){
      return Padding(
        padding: const EdgeInsets.fromLTRB(18.0, 60.0, 18.0, 0.0),
        child: TextFormField(
          obscureText: true,
          // keyboardType: TextInputType.p,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            labelText: passwordLabel,
            labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 19.0,
            ),
          ),
        ),
      );
  }

  forgotText(Color textColor){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 50.0, 18.0, 0.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          forgotPasswordText,
          style: TextStyle(
            color:textColor,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }



gotoWelcomePage2(BuildContext context) {
  Navigator.push(context,
    MaterialPageRoute(builder: (context) => WelcomePageSecond()),
  );
}

  signInButton(double buttonWidth, double buttonHeight){
    return Padding(
      padding: const EdgeInsets.fromLTRB(13.0, 60.0, 13.0, 0.0),
      child: Center(
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          // 52.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0)),
              elevation: 0.0,
              primary: Color(0xFFF62154),
              textStyle: TextStyle(
                fontSize: 15.0,
              ),
            ),
            onPressed: () {},
            child: Text('SIGN IN'),
          ),
        ),
      ),
    );
  }

  myText(String myTextValue, double myFontSize, Color myFontColor, ){
    return
          Text(myTextValue,
            style: TextStyle(fontSize: myFontSize, color: myFontColor),);
  }





