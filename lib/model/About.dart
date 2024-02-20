import 'dart:convert';

About aboutFromJson(String str) => About.fromJson(json.decode(str));
String aboutToJson(About data) => json.encode(data.toJson());
class About {
  About({
      this.href,});

  About.fromJson(dynamic json) {
    href = json['href'];
  }
  String? href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    return map;
  }

}