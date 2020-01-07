import 'package:daraapp/models/MsgSend.dart';
import 'package:daraapp/models/RoomModel.dart';
import 'package:daraapp/services/apis.dart';
import 'package:daraapp/views/Search.dart';
import 'package:daraapp/views/cardRooms.dart';
import 'package:daraapp/colors/appColors.dart';
import 'package:daraapp/views/messagesView.dart';
import 'package:daraapp/views/userAcount.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../utils/appfonts.dart';

class RoomsPage extends StatefulWidget {
  @override
  _RoomsPageState createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  var api = DarakAPIS();

  Future<List<RoomsModel>> post;

  @override
  void initState() {
    super.initState();
    post = api.fetchPost();
    MsgSend.check();

    tabs = [
      FutureBuilder<List<RoomsModel>>(
        future: post,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return RoomsCard(
                  roomModel: snapshot.data[index],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 100,
                      child: LinearProgressIndicator(),
                    ),
                  ),
                ),
                Text(
                  'جار التحميل...',
                  style: AppFonts.cardPrice,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          );
        },
      ),
      Center(
        child: SearchResultsListWidget(),
      ),
      Center(
        child: Container(
          child: Messages(),
        ),
      ),
      Center(
        child: Container(
          child: UserAcount(),
        ),
      ),
    ];
  }

  int _currentIndex = 0;
  List<Widget> tabs;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: tabs[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.colorBackground,
        iconSize: 30,
        fixedColor: AppColors.colorPrincipal,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.home),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.search),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.comments),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.user),
            title: Container(),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          //print(_currentIndex);
        },
      ),
    );
  }
}
