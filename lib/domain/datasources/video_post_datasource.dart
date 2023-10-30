import 'package:toktik/domain/video_post.dart';

abstract class VideoPostDataSource {

  Future <List<VideoPost>> getFavoriteVideosByPage (String userId);

  Future <List<VideoPost>> getTrendingVideosByPage (int page);


}