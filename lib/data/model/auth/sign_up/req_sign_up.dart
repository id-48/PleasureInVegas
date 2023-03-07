import 'dart:convert';

ReqSignUp reqSignUpFromJson(String str) => ReqSignUp.fromJson(json.decode(str));

String reqSignUpToJson(ReqSignUp data) => json.encode(data.toJson());

class ReqSignUp {
  ReqSignUp({
    required this.userName,
    required this.userEmail,
    required this.userPass,
    required this.userPhone,
    required this.file,
    required this.playerId,
  });

  String userName;
  String userEmail;
  String userPass;
  String userPhone;
  String file;
  String playerId;

  factory ReqSignUp.fromJson(Map<String, dynamic> json) => ReqSignUp(
    userName: json["user_name"],
    userEmail: json["user_email"],
    userPass: json["user_pass"],
    userPhone: json["user_phone"],
    file: json["file"],
    playerId: json["player_id"],
  );

  Map<String, dynamic> toJson() => {
    "user_name": userName,
    "user_email": userEmail,
    "user_pass": userPass,
    "user_phone": userPhone,
    "file": file,
    "player_id": playerId,
  };
}
