import 'dart:convert';

MediumLarge mediumLargeFromJson(String str) => MediumLarge.fromJson(json.decode(str));
String mediumLargeToJson(MediumLarge data) => json.encode(data.toJson());
class MediumLarge {
  MediumLarge({
      this.file, 
      this.width, 
      this.height, 
      this.filesize, 
      this.mimeType, 
      this.sourceUrl,});

  MediumLarge.fromJson(dynamic json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    filesize = json['filesize'];
    mimeType = json['mime_type'];
    sourceUrl = json['source_url'];
  }
  String? file;
  num? width;
  num? height;
  num? filesize;
  String? mimeType;
  String? sourceUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['file'] = file;
    map['width'] = width;
    map['height'] = height;
    map['filesize'] = filesize;
    map['mime_type'] = mimeType;
    map['source_url'] = sourceUrl;
    return map;
  }

}