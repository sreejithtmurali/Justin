import 'Medium.dart';




import 'Full.dart';
import 'dart:convert';

Sizes sizesFromJson(String str) => Sizes.fromJson(json.decode(str));
String sizesToJson(Sizes data) => json.encode(data.toJson());
class Sizes {
  Sizes({
      this.medium, 
      this.large, 
      this.thumbnail, 
      this.mediumLarge, 
      this.x1536, 
      this.x2048, 
      this.depicterthumbnail, 
      this.haraAvatarPostCarousel, 
      this.postthumbnail, 
      this.haraPhotoReviewsThumbnailImage, 
      this.woocommerceThumbnail, 
      this.woocommerceSingle, 
      this.woocommerceGalleryThumbnail, 
      this.variationSwatchesImageSize, 
      this.variationSwatchesTooltipSize, 
      this.full,});

  Sizes.fromJson(dynamic json) {
    medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    large = json['large'] != null ? Medium.fromJson(json['large']) : null;
    thumbnail = json['thumbnail'] != null ? Medium.fromJson(json['thumbnail']) : null;
    mediumLarge = json['medium_large'] != null ? Medium.fromJson(json['medium_large']) : null;
    x1536 = json['1536x1536'] != null ? Medium.fromJson(json['1536x1536']) : null;
    x2048 = json['2048x2048'] != null ? Medium.fromJson(json['2048x2048']) : null;
    depicterthumbnail = json['depicter-thumbnail'] != null ? Medium.fromJson(json['depicter-thumbnail']) : null;
    haraAvatarPostCarousel = json['hara_avatar_post_carousel'] != null ? Medium.fromJson(json['hara_avatar_post_carousel']) : null;
    postthumbnail = json['post-thumbnail'] != null ? Medium.fromJson(json['post-thumbnail']) : null;
    haraPhotoReviewsThumbnailImage = json['hara_photo_reviews_thumbnail_image'] != null ? Medium.fromJson(json['hara_photo_reviews_thumbnail_image']) : null;
    woocommerceThumbnail = json['woocommerce_thumbnail'] != null ? Medium.fromJson(json['woocommerce_thumbnail']) : null;
    woocommerceSingle = json['woocommerce_single'] != null ? Medium.fromJson(json['woocommerce_single']) : null;
    woocommerceGalleryThumbnail = json['woocommerce_gallery_thumbnail'] != null ? Medium.fromJson(json['woocommerce_gallery_thumbnail']) : null;
    variationSwatchesImageSize = json['variation_swatches_image_size'] != null ? Medium.fromJson(json['variation_swatches_image_size']) : null;
    variationSwatchesTooltipSize = json['variation_swatches_tooltip_size'] != null ? Medium.fromJson(json['variation_swatches_tooltip_size']) : null;
    full = json['full'] != null ? Full.fromJson(json['full']) : null;
  }
  Medium? medium;
  Medium? large;
  Medium? thumbnail;
  Medium? mediumLarge;
  Medium? x1536;
  Medium? x2048;
  Medium? depicterthumbnail;
  Medium? haraAvatarPostCarousel;
  Medium? postthumbnail;
  Medium? haraPhotoReviewsThumbnailImage;
  Medium? woocommerceThumbnail;
  Medium? woocommerceSingle;
  Medium? woocommerceGalleryThumbnail;
  Medium? variationSwatchesImageSize;
  Medium? variationSwatchesTooltipSize;
  Full? full;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (medium != null) {
      map['medium'] = medium?.toJson();
    }
    if (large != null) {
      map['large'] = large?.toJson();
    }
    if (thumbnail != null) {
      map['thumbnail'] = thumbnail?.toJson();
    }
    if (mediumLarge != null) {
      map['medium_large'] = mediumLarge?.toJson();
    }
    if (x1536 != null) {
      map['1536x1536'] = x1536?.toJson();
    }
    if (x2048 != null) {
      map['2048x2048'] = x2048?.toJson();
    }
    if (depicterthumbnail != null) {
      map['depicter-thumbnail'] = depicterthumbnail?.toJson();
    }
    if (haraAvatarPostCarousel != null) {
      map['hara_avatar_post_carousel'] = haraAvatarPostCarousel?.toJson();
    }
    if (postthumbnail != null) {
      map['post-thumbnail'] = postthumbnail?.toJson();
    }
    if (haraPhotoReviewsThumbnailImage != null) {
      map['hara_photo_reviews_thumbnail_image'] = haraPhotoReviewsThumbnailImage?.toJson();
    }
    if (woocommerceThumbnail != null) {
      map['woocommerce_thumbnail'] = woocommerceThumbnail?.toJson();
    }
    if (woocommerceSingle != null) {
      map['woocommerce_single'] = woocommerceSingle?.toJson();
    }
    if (woocommerceGalleryThumbnail != null) {
      map['woocommerce_gallery_thumbnail'] = woocommerceGalleryThumbnail?.toJson();
    }
    if (variationSwatchesImageSize != null) {
      map['variation_swatches_image_size'] = variationSwatchesImageSize?.toJson();
    }
    if (variationSwatchesTooltipSize != null) {
      map['variation_swatches_tooltip_size'] = variationSwatchesTooltipSize?.toJson();
    }
    if (full != null) {
      map['full'] = full?.toJson();
    }
    return map;
  }

}