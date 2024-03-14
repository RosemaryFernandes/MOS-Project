import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class high1 extends StatefulWidget {
  const high1({Key? key}) : super(key: key);

  @override
  State<high1> createState() => _high1();
}

class _high1 extends State<high1> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/high8min.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  //used to realease resources held by video player controller(maintains efficiency n integrity)
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("You got this!"),
        backgroundColor: Color.fromARGB(255, 26, 20, 37),
        foregroundColor: const Color.fromARGB(255, 175, 175, 175),
      ),
      backgroundColor: Color.fromARGB(255, 202, 191, 235),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: Stack(
        children: [
          
          Positioned(
            bottom:10.0,
            right:MediaQuery.of(context).size.width/ 2 - 50,
            child:FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 37, 13, 121),
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                });
              },
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            ),
            ),
        ],
      ),
    );
  }
}

