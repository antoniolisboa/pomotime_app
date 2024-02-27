import 'package:flutter/material.dart';
import 'package:pomotime_app/util/app_colors.dart';

class MediaControlButton extends StatefulWidget {
  const MediaControlButton({super.key});

  @override
  State<MediaControlButton> createState() => _MediaControlButtonState();
}

class _MediaControlButtonState extends State<MediaControlButton> {
  bool _isPlay = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isPlay = !_isPlay;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1B1F3B),
        shape: const CircleBorder(),
        elevation: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.5),
        child: Icon(
          (_isPlay) ? Icons.play_arrow_rounded : Icons.pause_rounded,
          color: AppColors.secondColor,
          size: 38,
        ),
      ),
    );
  }
}
