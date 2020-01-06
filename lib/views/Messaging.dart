import 'package:daraapp/colors/appColors.dart';
import 'package:daraapp/utils/appfonts.dart';
import 'package:flutter/material.dart';

class Messaging extends StatefulWidget {
  @override
  _MessagingState createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: AppColors.mdNigthBlue,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  child: Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(6),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: AppColors.aliZarin,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                            child: Icon(
                              Icons.person,
                              size: 50,
                              color: AppColors.mdNigthBlue,
                            ),
                          ),
                          Container(
                            width: 260,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColors.appbarTitle,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                            ),
                            child: Text(
                              "Message fom adminMessage fom adminMessage fom admin",
                              style: AppFonts.subTitle,
                              maxLines: 5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 260,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppColors.appbarTitle,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              ),
                            ),
                            child: Text(
                              "Message from user test....",
                              style: AppFonts.subTitle,
                              maxLines: 5,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(6),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: AppColors.mdNigthBlue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                            child: Icon(
                              Icons.person,
                              size: 50,
                              color: AppColors.aliZarin,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              BottomAppBar(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 60,
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 8, top: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: AppColors.barColor,
                      ),
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'الرسالة...',
                            hintStyle: AppFonts.placeholderTxt,
                            fillColor: Colors.white),
                        style: AppFonts.colorWhite,
                        textDirection: TextDirection.rtl,
                        maxLines: 3,
                      ),
                    ),
                    Container(
                      width: 60,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.send,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
