import 'dart:convert';

Author authorFromJson(String str) => Author.fromJson(json.decode(str));
String authorToJson(Author data) => json.encode(data.toJson());
class Author {
  Author({
      this.embeddable, 
      this.href,});

  Author.fromJson(dynamic json) {
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