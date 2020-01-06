import 'package:daraapp/colors/appColors.dart';
import 'package:daraapp/models/ModelLogin.dart';
import 'package:daraapp/services/apis.dart';
import 'package:daraapp/utils/appfonts.dart';
import 'package:daraapp/views/rooms.dart';
import 'package:daraapp/views/SignUp.dart';
import 'package:flutter/material.dart';

import '../utils/staticstext.dart';
import '../utils/staticstext.dart';
import '../utils/staticstext.dart';
import '../utils/staticstext.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  Future<bool> _logInUser() async {
    if (_email.text.isEmpty || _password.text.isEmpty) {
      await showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: Text("Error"),
              content: Text(
                "Invalid email or Password",
                style: AppFonts.subTitle,
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    "ok",
                    style: AppFonts.cardTitle,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    } else {
      DarakAPIS api = DarakAPIS();
      Map res = await api.login(
        ModelLogin(
          _email.text,
          _password.text,
        ),
      );
      if (res.isNotEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => RoomsPage(),
          ),
        );
      } else {
        print("No");
        showDialog(
            context: context,
            builder: (BuildContext context) {
              // return object of type Dialog
              return AlertDialog(
                title: Text("Error"),
                content: Text(
                  "Invalid email or Password",
                  style: AppFonts.subTitle,
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text(
                      "Ok",
                      style: AppFonts.cardTitle,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.asset(
              'assets/images/loginBackground.png',
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              margin: EdgeInsets.all(25),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white.withOpacity(0.9),
                  ),
                  padding: EdgeInsets.all(15),
                  width: 300,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        StaticText.appName,
                        textAlign: TextAlign.center,
                        style: AppFonts.loginTitle,
                      ),
                      SizedBox(height: 30),
                      TextField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'exemple@email.com',
                          hintStyle: AppFonts.placeholderTxt,
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppColors.roomTitles,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextField(
                        controller: _password,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: StaticText.password,
                          hintStyle: AppFonts.placeholderTxt,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: AppColors.roomTitles,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          // FlatButton(
                          //   child: Text(
                          //     'Lost password ?',
                          //     style: AppFonts.cardPrice,
                          //   ),
                          //   onPressed: () {},
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                              child: Text(
                                StaticText.logIn,
                                style: AppFonts.btnTxt,
                              ),
                              onPressed: () async {
                                _logInUser();
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: AppColors.btnTxt),
                              ),
                              splashColor: AppColors.cardColor,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: FlatButton(
                              child: Text(
                                StaticText.signIn,
                                style: AppFonts.btnTxt,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ),
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: AppColors.btnTxt),
                              ),
                              splashColor: AppColors.cardColor,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
