class GetMsgModel {
  String postParent;
  String postConent;
  String postTitle;
  String postAuthor;

  GetMsgModel(
      this.postParent, this.postAuthor, this.postConent, this.postTitle);

  GetMsgModel.map(dynamic obj) {
    this.postAuthor = obj["post_author"];
    this.postAuthor = obj["post_content"];
    this.postTitle = obj["post_title"];
    this.postConent = obj["post_parent"];
  }
}

class SendMsgModel {
  String postParent;
  String postConent;
  String postTitle;
  String postAuthor;

  SendMsgModel(
      this.postParent, this.postAuthor, this.postConent, this.postTitle);

  SendMsgModel.map(dynamic obj) {
    this.postAuthor = obj["post_author"];
    this.postAuthor = obj["post_content"];
    this.postTitle = obj["post_title"];
    this.postConent = obj["post_parent"];
  }
}
