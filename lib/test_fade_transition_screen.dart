import 'package:flutter/material.dart';

class TestFadeTransitionScreen extends StatefulWidget {
  const TestFadeTransitionScreen({super.key});

  @override
  TestFadeTransitionScreenState createState() =>
      TestFadeTransitionScreenState();
}

class TestFadeTransitionScreenState extends State<TestFadeTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: const FlutterLogo(size: 100),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
