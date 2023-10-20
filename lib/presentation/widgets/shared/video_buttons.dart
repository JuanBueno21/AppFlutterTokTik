import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/domain/video_post.dart';
import '../../../config/helpers/normal_formats.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({
    super.key,
    required this.video
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ZoomIn(child: _CustomIconButton (value: video.likes, iconColor: Colors.red, iconData: Icons.favorite_border)),
        const SizedBox(height: 20,),
        ZoomIn(child: _CustomIconButton (value: video.views, iconData: Icons.remove_red_eye_outlined)),
        const SizedBox(height: 20,),
        ZoomIn (child: const _CustomIconButton (value: 0, iconData: Icons.comment))
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {

  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor
    }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, 
        icon: Icon( iconData, color: color, size: 40,)),

        if ( value > 0)
        
        Text( NormalFormats.normalReableNumbers(value) ),
      ],
    );
  }
}