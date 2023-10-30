


import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/repositories/video_post_repositories.dart';
import 'package:toktik/domain/video_post.dart';

class VideoPostsRepositoryimpl   implements VideoPostRepository {

  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryimpl({
    required this.videosDataSource
    });

  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
}