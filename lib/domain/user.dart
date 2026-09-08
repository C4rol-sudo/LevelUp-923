
class User {
  late String usuario;
  late String senha;


  User(this.usuario, this.senha);


  User.fromJson(Map json) {
    // {  ["username": "valor", "password": "valor"], [], []   }
    usuario = json["username"];
    senha = json["password"];
  }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json["username"] = usuario;
    json["password"] = senha;


    return json;
  }
}