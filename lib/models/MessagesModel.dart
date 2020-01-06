class MessagesModel {
  String userId;
  String userIDRoom;
  String idRoom;
  String postTitle;
  List<String> messages;

  MessagesModel({
    this.userId,
    this.userIDRoom,
    this.idRoom,
    this.postTitle,
    this.messages
  });
  /*
  MessagesModel.map(dynamic obj) {
    this.userId = obj["ID"];
    this.userId = obj["user_id"];
    this.idRoom = obj["post_id"];
    this.postTitle = obj["post_title"];
  }
  */
}
