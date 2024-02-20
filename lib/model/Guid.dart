import 'dart:convert';

Guid guidFromJson(String str) => Guid.fromJson(json.decode(str));
String guidToJson(Guid data) => json.encode(data.toJson());
class Guid {
  Guid({
      this.rendered,});

  Guid.fromJson(dynamic json) {
    rendered = json['rendered'];
  }
  String? rendered;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rendered'] = rendered;
    return map;
  }

}