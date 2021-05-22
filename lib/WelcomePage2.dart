import 'package:flutter/material.dart';
import 'package:xcrino_flutter_app/commonMethods.dart';

class WelcomePageSecond extends StatefulWidget {
  const WelcomePageSecond({Key key}) : super(key: key);

  @override
  _WelcomePageSecondState createState() => _WelcomePageSecondState();
}

class _WelcomePageSecondState extends State<WelcomePageSecond> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Colors.pink,
                        Color(0xFFFF4D1D),
                      ],
                    ),
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 0.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          child: Column(children: [
                            Container(
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 4.0),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/profilePic2.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                "Leroy Conner",
                                style: TextStyle(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            myText(signInToContinue, 16.0, Colors.white70),
                            ]),
                        ),
                      ),
                    ],
                  ),
                ),
                usernameField(),
                passwordField(),
                forgotText(Color(0xFFF62154)),
                signInButton(MediaQuery.of(context).size.width * 0.90, 58.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      myText(dontHaveAccountText, 16.0, Colors.grey),
                      myText(signUpText, 16.0, Colors.black),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
