import 'package:daraapp/colors/appColors.dart';
import 'package:daraapp/models/MsgSend.dart';
import 'package:daraapp/utils/appfonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/staticstext.dart';
import 'login.dart';

class UserAcount extends StatefulWidget {
  @override
  _UserAcountState createState() => _UserAcountState();
}

class _UserAcountState extends State<UserAcount> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(MsgSend.nomuser);
    print(MsgSend.emailuser);

  }
  @override
  Widget build(BuildContext context) {
    return
      ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.titleColor,
                ),
                child: Icon(
                  FontAwesome.user,
                  size: 65,
                  color: AppColors.roomTitles,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                MsgSend.nomuser,
                style: AppFonts.roomsTitles,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    MsgSend.emailuser,
                    style: AppFonts.subTitle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Divider(
                      color: AppColors.cardPrice,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.wtAsphalt,
                  borderRadius: BorderRadius.circular(50),
                ),
                width: 250,
                height: 50,
                child: FlatButton.icon(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setString('token', '');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LogIn(),
                      ),
                    );
                  },
                  label: Text(
                    StaticText.logOut,
                    style: AppFonts.colorWhite,
                  ),
                  icon: Icon(
                    FontAwesome.power_off,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ],
      );
  }
}
/*
*/