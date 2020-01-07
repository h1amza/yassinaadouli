import 'package:shared_preferences/shared_preferences.dart';

class MsgSend {

  static String iduser;
  static String nomuser;
  static String emailuser;
  static String iduserRoom;
  static String idDroom;
  static List<DateTime> pikDate;
  static String postTitle;
  static String message;
  static String phone;
  static String person;

  static Future<void> check()async{
    final prefs = await SharedPreferences.getInstance();
    iduser=prefs.get('ID');
    nomuser=prefs.get('name');
    emailuser=prefs.get('email');
  }
  // MsgSend.map(dynamic obj) {
  //   this.iduser = obj["ID"];
  //   this.iduserRoom = obj["user_id"];
  //   this.idDroom = obj["post_id"];
  //   this.pikDate = obj["post_title"];
  //   this.iduser = obj["ID"];
  //   this.iduserRoom = obj["user_id"];
  //   this.idDroom = obj["post_id"];
  //   this.pikDate = obj["post_title"];
  // }

}
