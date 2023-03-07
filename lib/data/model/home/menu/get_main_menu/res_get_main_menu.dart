
import 'dart:convert';

ResGetMainMenu resGetMainMenuFromJson(String str) => ResGetMainMenu.fromJson(json.decode(str));

String resGetMainMenuToJson(ResGetMainMenu data) => json.encode(data.toJson());

class ResGetMainMenu {
  ResGetMainMenu({
    required this.status,
    required this.msg,
    required this.data,
  });

  int status;
  String msg;
  List<GetMainMenu> data;

  factory ResGetMainMenu.fromJson(Map<String, dynamic> json) => ResGetMainMenu(
    status: json["status"],
    msg: json["msg"],
    data: List<GetMainMenu>.from(json["data"].map((x) => GetMainMenu.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class GetMainMenu {
  GetMainMenu({
    required this.id,
    required this.name,
    required this.urlTitle,
    required this.image,
    required this.created,
    required this.updated,
    required this.status,
  });

  String id;
  String name;
  String urlTitle;
  String image;
  String created;
  String updated;
  String status;

  factory GetMainMenu.fromJson(Map<String, dynamic> json) => GetMainMenu(
    id: json["id"],
    name: json["name"],
    urlTitle: json["url_title"],
    image: json["image"],
    created: DateTime.parse(json["created"]).toString(),
    updated: DateTime.parse(json["updated"]).toString(),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "url_title": urlTitle,
    "image": image,
    "created": created,
    "updated": updated,
    "status": status,
  };
}

// import 'dart:convert';
//
// List<ResGetMainMenu> resGetMainMenuFromJson(String str) => List<ResGetMainMenu>.from(json.decode(str).map((x) => ResGetMainMenu.fromJson(x)));
//
// String resGetMainMenuToJson(List<ResGetMainMenu> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class ResGetMainMenu {
//   ResGetMainMenu({
//     required this.status,
//     required this.msg,
//     required this.data,
//   });
//
//   int status;
//   String msg;
//   List<GetMainMenu> data;
//
//   factory ResGetMainMenu.fromJson(Map<String, dynamic> json) => ResGetMainMenu(
//     status: json["status"],
//     msg: json["msg"],
//     data: List<GetMainMenu>.from(json["data"].map((x) => GetMainMenu.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "msg": msg,
//     "data": List<dynamic>.from(data.map((x) => x.toJson())),
//   };
// }
//
// class GetMainMenu {
//   GetMainMenu({
//     required this.id,
//     required this.name,
//     required this.urlTitle,
//     required this.image,
//     required this.created,
//     required this.updated,
//     required this.status,
//   });
//
//   String id;
//   String name;
//   String urlTitle;
//   String image;
//   DateTime created;
//   DateTime updated;
//   String status;
//
//   factory GetMainMenu.fromJson(Map<String, dynamic> json) => GetMainMenu(
//     id: json["id"],
//     name: json["name"],
//     urlTitle: json["url_title"],
//     image: json["image"],
//     created: DateTime.parse(json["created"]),
//     updated: DateTime.parse(json["updated"]),
//     status: json["status"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "url_title": urlTitle,
//     "image": image,
//     "created": created.toIso8601String(),
//     "updated": updated.toIso8601String(),
//     "status": status,
//   };
// }
//
