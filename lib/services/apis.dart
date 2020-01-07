import 'dart:convert';
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
      print(json.decode(response.body));
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
      MsgSend.emailuser=res['user_email'];
      MsgSend.nomuser=res['display_name'];

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('token', res['ID']);

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
    final response = await http.post(
      url,
      body: {
        'post_title': id,
        'post_parent': MsgSend.idDroom,
        'post_author': MsgSend.iduserRoom,
        'post_content':
            "date reservation:${MsgSend.pikDate.toString()} ,message: $m",
      },
    );
    /* if (response.statusCode == 200) {
     // var res = json.decode(response.body);
      return true;
    } else {
      print("xi7aja maxi talhih");
      return false;
    }*/
  }

  Future<List> getMessages() async {
    final prefs = await SharedPreferences.getInstance();
    String id = prefs.get('token');
    var url =
        "https://mobile.darak-app.com/api/v1/get_wpestate_message_owner/${id}";
    //print(id);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List res = json.decode(response.body);
      print(res);
      /*for(int i=0;i<res.length;i++){
        //print("id:${res[i]["ID"]}");
        //print("message:${res[i]["post_content"]}");
        print("mol room:${res[i]["post_parent"]}");
        print("id room:${res[i]["post_author"]}");
      }*/
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
