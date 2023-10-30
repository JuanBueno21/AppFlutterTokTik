

import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class LocalVideoDataSource implements VideoPostDataSource {
  
  
  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(String userId) {
  
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    
    await Future.delayed(const Duration(seconds: 2));

      final List<VideoPost> newVideos = videoPosts.map( 
    (video) => LocalVideoModels.fromJson(video).toVideoPostEntity()
    ).toList();

    return newVideos;
  }
}