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


  Future<List> post;
  var api = DarakAPIS();
  Widget Message;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    post = api.getMessages();
    Message = FutureBuilder(
      future: post,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return cardMessage(snapshot);
        }
        else {
          if(snapshot.hasError){
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
        }

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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Messaging(snapshot.data[index])),
            );
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
                    Flexible(
                      child: Text(
                        "ROOM: ${snapshot.data[index].idRoom}",
                        style: AppFonts.cardTitle,
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Center(
                      child: Text(
                        "${snapshot.data[index].date}",
                        style: AppFonts.cardPrice,
                      ),
                    ),
                  ],
                ),
                subtitle:Row(
                  children: <Widget>[
                    Flexible(
                      child: Text(
                          "${snapshot.data[index].lastMessage}",
                          style: AppFonts.subTitle,
                      ),
                    ),
                  ],
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