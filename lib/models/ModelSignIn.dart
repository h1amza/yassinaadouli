class ModelSignUp {
  String username;
  String email;
  String password;

  ModelSignUp(this.username, this.email, this.password);

  ModelSignUp.map(dynamic obj) {
    this.username = obj["user_name"];
    this.email = obj["email"];
    this.password = obj["password"];
  }

  get postparent => null;
}
