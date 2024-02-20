import 'dart:convert';

Full fullFromJson(String str) => Full.fromJson(json.decode(str));
String fullToJson(Full data) => json.encode(data.toJson());
class Full {
  Full({
      this.file, 
      this.width, 
      this.height, 
      this.mimeType, 
      this.sourceUrl,});

  Full.fromJson(dynamic json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime_type'];
    sourceUrl = json['source_url'];
  }
  String? file;
  num? width;
  num? height;
  String? mimeType;
  String? sourceUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['file'] = file;
    map['width'] = width;
    map['height'] = height;
    map['mime_type'] = mimeType;
    map['source_url'] = sourceUrl;
    return map;
  }

}