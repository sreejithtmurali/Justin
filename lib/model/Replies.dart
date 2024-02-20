import 'dart:convert';

Replies repliesFromJson(String str) => Replies.fromJson(json.decode(str));
String repliesToJson(Replies data) => json.encode(data.toJson());
class Replies {
  Replies({
      this.embeddable, 
      this.href,});

  Replies.fromJson(dynamic json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }
  bool? embeddable;
  String? href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['embeddable'] = embeddable;
    map['href'] = href;
    return map;
  }

}