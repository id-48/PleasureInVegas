import 'dart:convert';

ReqSignIn reqSignUpFromJson(String str) => ReqSignIn.fromJson(json.decode(str));

String reqSignUpToJson(ReqSignIn data) => json.encode(data.toJson());

class ReqSignIn {
  ReqSignIn({
    required this.email,
    required this.password,
    required this.playerId,
  });

  String email;
  String password;
  String playerId;

  factory ReqSignIn.fromJson(Map<String, dynamic> json) => ReqSignIn(
        email: json["email"],
        password: json["password"],
        playerId: json["player_id"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "player_id": playerId,
      };
}
