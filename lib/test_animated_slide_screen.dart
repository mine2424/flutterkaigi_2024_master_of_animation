import 'package:flutter/material.dart';

class TestAnimatedSlideScreen extends StatefulWidget {
  const TestAnimatedSlideScreen({super.key});

  @override
  State<TestAnimatedSlideScreen> createState() =>
      _TestAnimatedSlideScreenState();
}

class _TestAnimatedSlideScreenState extends State<TestAnimatedSlideScreen> {
  var isAnimated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test AnimatedContainer'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isAnimated = !isAnimated;
                });
              },
              child: const Text('Animation'),
            ),
            for (var i = 0; i < 1000; i++) ...[
              SizedBox(
                width: double.infinity,
                child: AnimatedSlide(
                  offset: Offset(isAnimated ? 1 : 0, 0),
                  duration: const Duration(milliseconds: 300),
                  child: const FlutterLogo(size: 100),
                ),
              ),
              const SizedBox(height: 16),
            ]
          ],
        ),
      ),
    );
  }
}
