import 'package:flutter/material.dart';

class TestAnimatedContainerScreen extends StatefulWidget {
  const TestAnimatedContainerScreen({super.key});

  @override
  State<TestAnimatedContainerScreen> createState() =>
      _TestAnimatedContainerScreenState();
}

class _TestAnimatedContainerScreenState
    extends State<TestAnimatedContainerScreen> {
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
            // Press the animation button to see the animation.
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isAnimated = !isAnimated;
                });
              },
              child: const Text('Animation'),
            ),
            for (var i = 0; i < 100; i++) ...[
              AnimatedContainer(
                height: isAnimated ? 50 : 100,
                width: double.infinity,
                color: Colors.blue.withOpacity(0.5),
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 100),
              ),
              const SizedBox(height: 16),
            ]
            // AnimatedContainer(
            //   height: isAnimated ? 50 : 100,
            //   color: Colors.blue,
            //   duration: const Duration(seconds: 1),
            //   curve: Curves.fastOutSlowIn,
            // ),
          ],
        ),
      ),
    );
  }
}
