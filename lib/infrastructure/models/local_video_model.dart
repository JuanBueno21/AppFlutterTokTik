import 'package:toktik/domain/video_post.dart';

class LocalVideoModels {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModels({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModels.fromJson(Map<String, dynamic> json) =>
      LocalVideoModels(
        name: json["name"] ?? "no namee",
        videoUrl: json["videoUrl"],
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
      );

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
