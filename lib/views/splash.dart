import 'package:daraapp/views/rooms.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';
class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  Future checkDirectionRoute() async {
    final prefs = await SharedPreferences.getInstance();
    String  r = prefs.get("token");
    if(r == '' || r== null){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => LogIn(),
        ),
      );
    }
    else{
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => RoomsPage(),
        ),
      );
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      checkDirectionRoute();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 250,
                child: Image.asset('assets/images/logo.png')
            ),
          ],
        ),
      ),
    );
  }
}
