import 'package:flutter/material.dart';
import 'package:xcrino_flutter_app/commonMethods.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myAppBar(),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 8.0, 0.0, 10.0),
                child: Text(
                  welcomeBackText,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 6.0, 0.0, 0.0),
                child: myText(signInToContinue, 16.0, Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: usernameField(),
              ),
              passwordField(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 0.0),
              child : forgotText(Colors.grey),
          ),
              signInButton(MediaQuery.of(context).size.width * 0.90, 56.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialMediaButtons(facebookIcon),
                    socialMediaButtons(twitterIcon),
                    socialMediaButtons(googleIcon),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    myText(dontHaveAccountText, 16.0, Colors.grey),
                    GestureDetector(
                    child : myText(signUpText, 16.0, Colors.black),
                    onTap: (){
                      gotoWelcomePage2(context);
                    },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
