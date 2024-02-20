import 'dart:convert';

Title titleFromJson(String str) => Title.fromJson(json.decode(str));
String titleToJson(Title data) => json.encode(data.toJson());
class Title {
  Title({
      this.rendered,});

  Title.fromJson(dynamic json) {
    rendered = json['rendered'];
  }
  String? rendered;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rendered'] = rendered;
    return map;
  }

}