import 'Sizes.dart';
import 'ImageMeta.dart';
import 'dart:convert';

MediaDetails mediaDetailsFromJson(String str) => MediaDetails.fromJson(json.decode(str));
String mediaDetailsToJson(MediaDetails data) => json.encode(data.toJson());
class MediaDetails {
  MediaDetails({
      this.width, 
      this.height, 
      this.file, 
      this.filesize, 
      this.sizes, 
      this.imageMeta,});

  MediaDetails.fromJson(dynamic json) {
    width = json['width'];
    height = json['height'];
    file = json['file'];
    filesize = json['filesize'];
    sizes = json['sizes'] != null ? Sizes.fromJson(json['sizes']) : null;
    imageMeta = json['image_meta'] != null ? ImageMeta.fromJson(json['image_meta']) : null;
  }
  num? width;
  num? height;
  String? file;
  num? filesize;
  Sizes? sizes;
  ImageMeta? imageMeta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = width;
    map['height'] = height;
    map['file'] = file;
    map['filesize'] = filesize;
    if (sizes != null) {
      map['sizes'] = sizes?.toJson();
    }
    if (imageMeta != null) {
      map['image_meta'] = imageMeta?.toJson();
    }
    return map;
  }

}