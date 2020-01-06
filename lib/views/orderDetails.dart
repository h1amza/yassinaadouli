import 'package:daraapp/colors/appColors.dart';
import 'package:daraapp/models/MessaginModel.dart';
import 'package:daraapp/models/MsgSend.dart';
import 'package:daraapp/services/apis.dart';
import 'package:daraapp/utils/appfonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../utils/appfonts.dart';
import '../utils/staticstext.dart';
import 'messagesView.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetqilsState createState() => _OrderDetqilsState();
}

class _OrderDetqilsState extends State<OrderDetails> {
  TextEditingController _name = TextEditingController();
  TextEditingController _person = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _message = TextEditingController();

  Future<bool> sendData() async {
    //String phone = _phone.text.toString();
    //String person =_person.text.toString();
    //String name =_name.text.toString();
    DarakAPIS api = DarakAPIS();
    String message = _message.text.toString();
    if (message.isNotEmpty) {
      await api.sendMessages(message);
      await api.getMessages();
      /*Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => Messages(),
        ),
      );*/
    } else {
      await showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return Container(
              height: 250,
              width: 350,
              child: AlertDialog(
                title: Text("Error"),
                content: Text(
                  "Invalid data",
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
              ),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mdNigthBlue,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(''),
            backgroundColor: AppColors.mdNigthBlue,
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    StaticText.fullName,
                    style: AppFonts.placeholderTxt,
                  ),
                  TextField(
                    textDirection: TextDirection.rtl,
                    controller: _name,
                    maxLength: 40,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    StaticText.persones,
                    style: AppFonts.placeholderTxt,
                  ),
                  TextField(
                    textAlign: TextAlign.end,
                    controller: _person,
                    maxLength: 2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.people),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    StaticText.phone,
                    style: AppFonts.placeholderTxt,
                  ),
                  TextField(
                    textAlign: TextAlign.end,
                    controller: _phone,
                    maxLength: 12,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        FontAwesome.mobile_phone,
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    StaticText.message,
                    style: AppFonts.placeholderTxt,
                  ),
                  TextField(
                    textDirection: TextDirection.rtl,
                    controller: _message,
                    maxLines: 5,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        FontAwesome.envelope_o,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      sendData();
                    },
                    child: Text(
                      StaticText.send,
                      style: AppFonts.btnTxt,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: AppColors.btnTxt),
                    ),
                    splashColor: AppColors.subTitle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
