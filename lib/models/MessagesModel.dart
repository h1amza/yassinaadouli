class MessagesModel {
  String idRoom;
  String lastMessage;
  String date;
  List<String> messages;
  List<String> dates;
  MessagesModel({
    this.idRoom,
    this.lastMessage,
    this.date,
    this.messages,
    this.dates
  }
  );

  static List<MessagesModel> countModel = List<MessagesModel>();

}