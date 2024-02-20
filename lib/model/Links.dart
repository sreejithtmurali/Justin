import 'Self.dart';
import 'Collection.dart';
import 'About.dart';
import 'Author.dart';
import 'Replies.dart';
import 'dart:convert';

Links linksFromJson(String str) => Links.fromJson(json.decode(str));
String linksToJson(Links data) => json.encode(data.toJson());
class Links {
  Links({
      this.self, 
      this.collection, 
      this.about, 
      this.author, 
      this.replies,});

  Links.fromJson(dynamic json) {
    if (json['self'] != null) {
      self = [];
      json['self'].forEach((v) {
        self?.add(Self.fromJson(v));
      });
    }
    if (json['collection'] != null) {
      collection = [];
      json['collection'].forEach((v) {
        collection?.add(Collection.fromJson(v));
      });
    }
    if (json['about'] != null) {
      about = [];
      json['about'].forEach((v) {
        about?.add(About.fromJson(v));
      });
    }
    if (json['author'] != null) {
      author = [];
      json['author'].forEach((v) {
        author?.add(Author.fromJson(v));
      });
    }
    if (json['replies'] != null) {
      replies = [];
      json['replies'].forEach((v) {
        replies?.add(Replies.fromJson(v));
      });
    }
  }
  List<Self>? self;
  List<Collection>? collection;
  List<About>? about;
  List<Author>? author;
  List<Replies>? replies;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (self != null) {
      map['self'] = self?.map((v) => v.toJson()).toList();
    }
    if (collection != null) {
      map['collection'] = collection?.map((v) => v.toJson()).toList();
    }
    if (about != null) {
      map['about'] = about?.map((v) => v.toJson()).toList();
    }
    if (author != null) {
      map['author'] = author?.map((v) => v.toJson()).toList();
    }
    if (replies != null) {
      map['replies'] = replies?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}