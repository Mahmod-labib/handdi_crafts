import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';

class PlayLesson extends StatefulWidget {
  const PlayLesson({super.key});

  @override
  State<PlayLesson> createState() => _PlayLessonState();
}

class _PlayLessonState extends State<PlayLesson> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
"https://media.istockphoto.com/id/1326014442/video/ten-to-one-modern-digital-countdown-timer-with-glowing-blue-circle-bar-on-easy-to-use.mp4?s=mp4-640x640-is&k=20&c=HArEPZivRc2UxctelGtP3vpryFU88ow7LiEHoJfAjSA="
    )
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pushReplacement(AppRouter.courseslessonspath);
          },
          icon:  Icon(
            Icons.arrow_back_ios,
            color: ColorManager.black2,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
