import 'dart:convert';

HaraAvatarPostCarousel haraAvatarPostCarouselFromJson(String str) => HaraAvatarPostCarousel.fromJson(json.decode(str));
String haraAvatarPostCarouselToJson(HaraAvatarPostCarousel data) => json.encode(data.toJson());
class HaraAvatarPostCarousel {
  HaraAvatarPostCarousel({
      this.file, 
      this.width, 
      this.height, 
      this.filesize, 
      this.mimeType, 
      this.sourceUrl,});

  HaraAvatarPostCarousel.fromJson(dynamic json) {
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