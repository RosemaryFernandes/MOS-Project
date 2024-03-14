import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stayfit/homepage.dart';
import 'package:stayfit/main.dart';




class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // ignore: unused_field
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => app1(),
        ));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87, // Background color
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/splash.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(seconds: 2),
              builder: (BuildContext context, double value, Widget? child) {
                return Opacity(
                  opacity: value,
                  child: Transform.scale(
                    scale: value,
                    child: child,
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Your new year\'s resolution will last',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontFamily: 'YourCustomFont', // Replace 'YourCustomFont' with the actual font family
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

