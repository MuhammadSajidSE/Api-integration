// import 'package:flutter/material.dart';
// import 'package:with_model/views/login.dart';
// import 'package:with_model/views/single_multi.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
// debugShowCheckedModeBanner: false,
//       home: LoginPage()
//     );
//   }
// }


import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:VideoBackground(),
    );
  }
}


class VideoBackground extends StatefulWidget {
  const VideoBackground({super.key});

  @override
  State<VideoBackground> createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {

  late FlickManager flickManager;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flickManager=FlickManager(videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlickVideoPlayer(flickManager: flickManager),
      ),
    );
  }
}