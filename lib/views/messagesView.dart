import 'package:daraapp/models/MessagesModel.dart';
import 'package:daraapp/services/apis.dart';
import 'package:daraapp/utils/appfonts.dart';
import 'package:daraapp/views/Messaging.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  Future<List<MessagesModel>> post;

  var api = DarakAPIS();
  Widget Message;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    api.getMessages();
    Message = FutureBuilder<List<MessagesModel>>(
      future: post,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return cardMessage(snapshot);
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Message,
    );
  }

  Widget cardMessage(snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            print("tapped");
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Messaging()),
            );*/
          },
          child: Column(
            children: <Widget>[
              Divider(
                height: 12.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 24.0,
                  child: Icon(Icons.person),
                ),
                title: Row(
                  children: <Widget>[
                    Text(
                      "aaaaaa",
                      style: AppFonts.cardTitle,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      "user room",
                      style: AppFonts.cardPrice,
                    ),
                  ],
                ),
                subtitle: Text(
                  "message",
                  style: AppFonts.subTitle,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
/*
ListView.builder(
       itemCount: 2,
      itemBuilder: (context, index) {
        // MessagesModel _model = MessagesModel.dummyData[index];
        return GestureDetector(
          onTap: () {
            print("tapped");
            DarakAPIS api = DarakAPIS();
            api.getMessages();
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Messaging()),
            );*/
          },
          child: Column(
            children: <Widget>[
              Divider(
                height: 12.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 24.0,
                  child: Icon(Icons.person),
                ),
                title: Row(
                  children: <Widget>[
                    Text(
                      "aaaaaa",
                      style: AppFonts.cardTitle,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      "user room",
                      style: AppFonts.cardPrice,
                    ),
                  ],
                ),
                subtitle: Text(
                  "message",
                  style: AppFonts.subTitle,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                ),
              ),
            ],
          ),
        );
      },
    );
*/
