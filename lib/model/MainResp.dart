import 'Guid.dart';
import 'Title.dart';
import 'Description.dart';
import 'Caption.dart';
import 'MediaDetails.dart';
import 'Links.dart';
import 'dart:convert';

MainResp mainRespFromJson(String str) => MainResp.fromJson(json.decode(str));
String mainRespToJson(MainResp data) => json.encode(data.toJson());
class MainResp {
  MainResp({
      this.id, 
      this.date, 
      this.dateGmt, 
      this.guid, 
      this.modified, 
      this.modifiedGmt, 
      this.slug, 
      this.status, 
      this.type, 
      this.link, 
      this.title, 
      this.author, 
      this.commentStatus, 
      this.pingStatus, 
      this.template, 
      this.meta, 
      this.description, 
      this.caption, 
      this.altText, 
      this.mediaType, 
      this.mimeType, 
      this.mediaDetails, 
      this.post, 
      this.sourceUrl, 
      this.links,});

  MainResp.fromJson(dynamic json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = json['guid'] != null ? Guid.fromJson(json['guid']) : null;
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    author = json['author'];
    commentStatus = json['comment_status'];
    pingStatus = json['ping_status'];
    template = json['template'];
    if (json['meta'] != null) {
      meta = [];
      // json['meta'].forEach((v) {
      //   meta?.add(Dynamic.fromJson(v));
      // });
    }
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    caption = json['caption'] != null ? Caption.fromJson(json['caption']) : null;
    altText = json['alt_text'];
    mediaType = json['media_type'];
    mimeType = json['mime_type'];
    mediaDetails = json['media_details'] != null ? MediaDetails.fromJson(json['media_details']) : null;
    post = json['post'];
    sourceUrl = json['source_url'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }
  num? id;
  String? date;
  String? dateGmt;
  Guid? guid;
  String? modified;
  String? modifiedGmt;
  String? slug;
  String? status;
  String? type;
  String? link;
  Title? title;
  num? author;
  String? commentStatus;
  String? pingStatus;
  String? template;
  List<dynamic>? meta;
  Description? description;
  Caption? caption;
  String? altText;
  String? mediaType;
  String? mimeType;
  MediaDetails? mediaDetails;
  dynamic post;
  String? sourceUrl;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['date'] = date;
    map['date_gmt'] = dateGmt;
    if (guid != null) {
      map['guid'] = guid?.toJson();
    }
    map['modified'] = modified;
    map['modified_gmt'] = modifiedGmt;
    map['slug'] = slug;
    map['status'] = status;
    map['type'] = type;
    map['link'] = link;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    map['author'] = author;
    map['comment_status'] = commentStatus;
    map['ping_status'] = pingStatus;
    map['template'] = template;
    if (meta != null) {
      map['meta'] = meta?.map((v) => v.toJson()).toList();
    }
    if (description != null) {
      map['description'] = description?.toJson();
    }
    if (caption != null) {
      map['caption'] = caption?.toJson();
    }
    map['alt_text'] = altText;
    map['media_type'] = mediaType;
    map['mime_type'] = mimeType;
    if (mediaDetails != null) {
      map['media_details'] = mediaDetails?.toJson();
    }
    map['post'] = post;
    map['source_url'] = sourceUrl;
    if (links != null) {
      map['_links'] = links?.toJson();
    }
    return map;
  }

}