import 'dart:convert';

ResSignUp resSignUpFromJson(String str) => ResSignUp.fromJson(json.decode(str));

String resSignUpToJson(ResSignUp data) => json.encode(data.toJson());

class ResSignUp {
  ResSignUp({
    required this.status,
    required this.msg,
    required this.data,
  });

  int status;
  String msg;
  Data data;

  factory ResSignUp.fromJson(Map<String, dynamic> json) => ResSignUp(
    status: json["status"],
    msg: json["msg"],
    data: Data.fromJson(json["data"]),

  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.customerId,
    required this.userName,
    required this.userEmail,
    required this.facebookId,
    required this.gmailId,
    required this.userPass,
    required this.userImage,
    required this.userPhone,
    required this.playerId,
    required this.created,
    required this.updated,
    required this.status,
    required this.resetToken,
  });

  String customerId;
  String userName;
  String userEmail;
  String facebookId;
  String gmailId;
  String userPass;
  String userImage;
  String userPhone;
  String playerId;
  String created;
  String updated;
  String status;
  String resetToken;

  factory Data.fromJson(Map<String, dynamic> json) => Data(

    customerId: json["customer_id"].toString(),
    userName: json["user_name"].toString(),
    userEmail: json["user_email"].toString(),
    facebookId: json["facebook_id"].toString(),
    gmailId: json["gmail_id"].toString(),
    userPass: json["user_pass"].toString(),
    userImage: json["user_image"].toString(),
    userPhone: json["user_phone"].toString(),
    playerId: json["player_id"].toString(),
    created: DateTime.parse(json["created"]).toString(),
    updated: json["updated"].toString(),
    status: json["status"].toString(),
    resetToken: json["reset_token"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "customer_id": customerId,
    "user_name": userName,
    "user_email": userEmail,
    "facebook_id": facebookId,
    "gmail_id": gmailId,
    "user_pass": userPass,
    "user_image": userImage,
    "user_phone": userPhone,
    "player_id": playerId,
    "created": created ,
    "updated": updated,
    "status": status,
    "reset_token": resetToken,
  };
}
