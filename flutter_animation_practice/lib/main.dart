import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimationPractice',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: AnimationScreen(),
    );
  }
}

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation =
        Tween<double>(begin: 0, end: 1.5).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_animationController.status == AnimationStatus.completed) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
        },
        child: const Icon(Icons.play_arrow_outlined),
      ),
      appBar: AppBar(title: const Text("Animation Practice"),),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Icon(
            Icons.zoom_in_map,
            size: 200,
          ),
        ),
      ),
    );
  }
}

