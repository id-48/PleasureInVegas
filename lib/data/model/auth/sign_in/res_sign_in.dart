import 'dart:convert';

ResSignIn resSignInFromJson(String str) => ResSignIn.fromJson(json.decode(str));

String resSignInToJson(ResSignIn data) => json.encode(data.toJson());

class ResSignIn {
  ResSignIn({
    required this.status,
    required this.msg,
    required this.data,
  });

  int status;
  String msg;
  Data data;

  factory ResSignIn.fromJson(Map<String, dynamic> json) => ResSignIn(
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
    customerId: json["customer_id"],
    userName: json["user_name"],
    userEmail: json["user_email"],
    facebookId: json["facebook_id"],
    gmailId: json["gmail_id"],
    userPass: json["user_pass"],
    userImage: json["user_image"],
    userPhone: json["user_phone"],
    playerId: json["player_id"],
    created: DateTime.parse(json["created"]).toString(),
    updated: json["updated"],
    status: json["status"],
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
    "created": created,
    "updated": updated,
    "status": status,
    "reset_token": resetToken,
  };
}
