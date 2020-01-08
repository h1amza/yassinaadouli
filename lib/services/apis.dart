import 'dart:convert';
import 'package:daraapp/models/MessagesModel.dart';
import 'package:daraapp/models/ModelLogin.dart';
import 'package:daraapp/models/ModelSignIn.dart';
import 'package:daraapp/models/MsgSend.dart';
import 'package:http/http.dart' as http;
import 'package:daraapp/models/RoomModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
class DarakAPIS {
  static Future<List<RoomsModel>> post;
  Future<List<RoomsModel>> fetchPost() async {
    final response = await http.get('https://mobile.darak-app.com/api/v1');
    if (response.statusCode == 200) {
      //print(json.decode(response.body));
      return roomsModelFromJson(response.body);
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<Map> login(ModelLogin modelLogin) async {
    final response = await http.post(
      'https://mobile.darak-app.com/api/v1/user_login',
      body: {
        "email": modelLogin.email,
        "password": modelLogin.password,
      },
    );
    if (response.statusCode == 200) {
      print(json.decode(response.body));
      var res = json.decode(response.body);

      MsgSend.iduser = res['ID']; //post_title ID
      MsgSend.emailuser = res['user_email'];
      MsgSend.nomuser = res['display_name'];

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('token', res['ID']);
      prefs.setString('email', res['user_email']);
      prefs.setString('name', res['display_name']);

      return json.decode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<Map> signup(ModelSignUp modelSignUp) async {
    final response = await http.post(
      'https://mobile.darak-app.com/api/v1/user_register',
    );
    if (response.statusCode == 200) {
      print(response.statusCode);
      return json.decode(response.body);
    } else {
      throw Exception('Failed to Sign Ups');
    }
  }

  Future<bool> sendMessages(String m) async {
    final prefs = await SharedPreferences.getInstance();
    String id = prefs.get('token');
    print("message: $m");
    print('post_title: $id');
    print('post_parent: ${MsgSend.idDroom}');
    print('post_author: ${MsgSend.iduserRoom}');
    var url = "https://mobile.darak-app.com/api/v1/create_wpestate_message";
    //final response =
    await http.post(
      url,
      body: {
        'post_title':  MsgSend.iduserRoom,
        'post_parent': MsgSend.idDroom,
        'post_author': id,
        'post_content':
        "date reservation:${MsgSend.pikDate.toString()}, message: $m",
      },
    );
  }

  Future<List> getMessages() async {
    final prefs = await SharedPreferences.getInstance();
    String id = prefs.get('token');
    var url =
        "https://mobile.darak-app.com/api/v1/get_connected_user_messages";
    //print(id);
    final response = await http.post(
        url,
        body:{
        'connectedUser':id
        }
    );
    if (response.statusCode == 200) {
      MessagesModel.countModel.clear();
      Map<String, dynamic>
       res = json.decode(response.body);
       res.forEach(
              (k,v){
                //print(k);
                for(int i=0;i<k.length;i++){
                  //print(v);
                  String message;
                  String date;
                  for(int j=0;j<1;j++){
                   // print("${v[i]["post_parent"]},${v[j]["post_date"]},${v[j]["post_content"]}");
                    message=v[j]["post_content"];
                    date = v[j]["post_date"];
                  }
                  List<String> messages= List<String>();

                  List<String> dates= List<String>();
                  for(int j=0;j<v.length;j++){
                     String m = v[j]["post_content"];
                     String d = v[j]["post_date"];
                     //print("${v[i]["post_parent"]},${v[i]["post_author"]},$m");
                     if(id==v[j]["post_author"]) messages.add("User:/h/a/$m");
                     else messages.add("admin:/h/a/$m");
                     dates.add(d);
                    // print('${v[i]["post_parent"]}/$messages');
                  }
                  MessagesModel.countModel.add(
                      MessagesModel(
//                          id:id,
//                          idAdmin: v[i]["post_author"],
                          idRoom:v[i]["post_parent"],
                          lastMessage: message,
                          date: date,
                         messages: messages,
                          dates: dates
                      )
                  );
                }
              }
      );
      return MessagesModel.countModel;

    } else {
      // print('-------- aaa|aaa --------');
      throw Exception('Failed to get messages');
    }
  }

  Future<List<RoomsModel>> filtreData(String c, String min, String max) async {
    var url = "https://mobile.darak-app.com/api/v1/filter_posts";
    final response = await http.post(url, body: {
      'newproperty_city': '$c',
      'min': '$min',
      'max': '$max',
    });
    if (response.statusCode == 200) {
      List res = json.decode(response.body);
      //print(res);
      return roomsModelFromJson(response.body);
    } else {
      /* print('-------- aaa|aaa --------');*/
      throw Exception('Failed to get messages');
    }
  }
}
