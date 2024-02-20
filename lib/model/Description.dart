import 'dart:convert';

Description descriptionFromJson(String str) => Description.fromJson(json.decode(str));
String descriptionToJson(Description data) => json.encode(data.toJson());
class Description {
  Description({
      this.rendered,});

  Description.fromJson(dynamic json) {
    rendered = json['rendered'];
  }
  String? rendered;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rendered'] = rendered;
    return map;
  }

}