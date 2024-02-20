import 'dart:convert';

Caption captionFromJson(String str) => Caption.fromJson(json.decode(str));
String captionToJson(Caption data) => json.encode(data.toJson());
class Caption {
  Caption({
      this.rendered,});

  Caption.fromJson(dynamic json) {
    rendered = json['rendered'];
  }
  String? rendered;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rendered'] = rendered;
    return map;
  }

}