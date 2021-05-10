class WallpaperModel {
  String photographer;
  String photograherurl;
  int photographerid;
  ImageModel src;

  WallpaperModel({
    this.photographer,
    this.photograherurl,
    this.photographerid,
    this.src,
  });

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
        src: ImageModel.fromMap(jsonData["src"]),
        photographer: jsonData["photographer"],
        photograherurl: jsonData["photographer_url"],
        photographerid: jsonData["photographer_id"]);
  }
}

class ImageModel {
  String original;
  String small;
  String portrait;

  ImageModel({
    this.original,
    this.small,
    this.portrait,
  });

  factory ImageModel.fromMap(Map<String, dynamic> jsonData) {
    return ImageModel(
        original: jsonData["original"],
        small: jsonData["small"],
        portrait: jsonData["portrait"]);
  }
}
