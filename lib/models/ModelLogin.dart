class ModelLogin {
  String email;
  String password;

  ModelLogin(this.email, this.password);

  ModelLogin.map(dynamic obj) {
    this.email = obj["email"];
    this.password = obj["password"];
  }
}
