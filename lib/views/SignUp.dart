import 'package:daraapp/colors/appColors.dart';
import 'package:daraapp/models/ModelSignIn.dart';
import 'package:daraapp/services/apis.dart';
import 'package:daraapp/utils/appfonts.dart';
import 'package:daraapp/views/rooms.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  Future<bool> _signInUser() async {
    if (_username.text.isEmpty ||
        _email.text.isEmpty ||
        _password.text.isEmpty) {
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

      Map res = await api.signup(
        ModelSignUp(
          _username.text,
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
        showDialog(
            context: context,
            builder: (BuildContext context) {
              // return object of type Dialog
              return AlertDialog(
                backgroundColor: Colors.white.withOpacity(0.8),
                title: Text("Error"),
                content: Text(
                  "All field is obligatory",
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
      body: Center(
        child: Container(
          margin: EdgeInsets.all(25),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    controller: _username,
                    decoration: InputDecoration(
                      hintText: 'User name',
                      hintStyle: AppFonts.placeholderTxt,
                      prefixIcon: Icon(
                        Icons.person,
                        color: AppColors.aliZarin,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'email',
                      prefixIcon: Icon(Icons.email, color: AppColors.aliZarin),
                      hintStyle: AppFonts.placeholderTxt,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    controller: _password,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'password',
                      hintStyle: AppFonts.placeholderTxt,
                      prefixIcon: Icon(Icons.lock, color: AppColors.aliZarin),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: FlatButton(
                      child: Text(
                        'حساب جديد',
                        style: AppFonts.btnTxt,
                      ),
                      onPressed: () {
                        _signInUser();
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
