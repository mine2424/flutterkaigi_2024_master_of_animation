import 'package:flutter/material.dart';

class TestRotateFlutterLogoScreen extends StatefulWidget {
  const TestRotateFlutterLogoScreen({super.key});

  @override
  State<TestRotateFlutterLogoScreen> createState() =>
      _TestRotateFlutterLogoScreenState();
}

class _TestRotateFlutterLogoScreenState
    extends State<TestRotateFlutterLogoScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat();
    _animation = Tween<double>(
      begin: 0,
      end: 12.5664, // 2Radians (360 degrees)
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Rotate Flutter Logo'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.rotate(
              angle: _animation.value,
              child: const FlutterLogo(size: 100),
            );
          },
        ),
      ),
    );
  }
}
