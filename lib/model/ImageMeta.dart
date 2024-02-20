import 'dart:convert';

ImageMeta imageMetaFromJson(String str) => ImageMeta.fromJson(json.decode(str));
String imageMetaToJson(ImageMeta data) => json.encode(data.toJson());
class ImageMeta {
  ImageMeta({
      this.aperture, 
      this.credit, 
      this.camera, 
      this.caption, 
      this.createdTimestamp, 
      this.copyright, 
      this.focalLength, 
      this.iso, 
      this.shutterSpeed, 
      this.title, 
      this.orientation, 
      this.keywords,});

  ImageMeta.fromJson(dynamic json) {
    aperture = json['aperture'];
    credit = json['credit'];
    camera = json['camera'];
    caption = json['caption'];
    createdTimestamp = json['created_timestamp'];
    copyright = json['copyright'];
    focalLength = json['focal_length'];
    iso = json['iso'];
    shutterSpeed = json['shutter_speed'];
    title = json['title'];
    orientation = json['orientation'];
    if (json['keywords'] != null) {
      keywords = [];
      // json['keywords'].forEach((v) {
      //   keywords?.add(Dynamic.fromJson(v));
      // });
    }
  }
  String? aperture;
  String? credit;
  String? camera;
  String? caption;
  String? createdTimestamp;
  String? copyright;
  String? focalLength;
  String? iso;
  String? shutterSpeed;
  String? title;
  String? orientation;
  List<dynamic>? keywords;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['aperture'] = aperture;
    map['credit'] = credit;
    map['camera'] = camera;
    map['caption'] = caption;
    map['created_timestamp'] = createdTimestamp;
    map['copyright'] = copyright;
    map['focal_length'] = focalLength;
    map['iso'] = iso;
    map['shutter_speed'] = shutterSpeed;
    map['title'] = title;
    map['orientation'] = orientation;
    if (keywords != null) {
      map['keywords'] = keywords?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}