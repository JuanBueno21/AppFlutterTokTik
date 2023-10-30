import 'package:flutter/material.dart';
import 'package:toktik/domain/repositories/video_post_repositories.dart';
import 'package:toktik/domain/video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videosRepository});

  Future<void> loadNextPage() async {

    //await Future.delayed (const Duration(seconds: 2));

    /*final List<VideoPost> newVideos = videoPosts.map( 
    (video) => LocalVideoModels.fromJson(video).toVideoPostEntity()
    ).toList();   */

    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
// edited from github
