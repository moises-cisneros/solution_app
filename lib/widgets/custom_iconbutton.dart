import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoIconButton extends StatelessWidget {
  final String videoUrl;
  final Color color;
  final double iconSize;

  const VideoIconButton({
    super.key,
    required this.videoUrl,
    this.color = Colors.white,
    this.iconSize = 50.0,
  });

  void _openVideoUrl() async {
    if (await canLaunchUrl(videoUrl as Uri)) {
      await launchUrl(videoUrl as Uri);
    } else {
      throw 'No se pudo abrir el enlace $videoUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.play_circle_fill),
      iconSize: iconSize,
      color: color,
      onPressed: _openVideoUrl,
    );
  }
}
