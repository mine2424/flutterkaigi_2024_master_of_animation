import 'package:flutter/material.dart';
import 'package:flutter_kaigi_2024_master_of_animation/test_animated_container_screen.dart';
import 'package:flutter_kaigi_2024_master_of_animation/test_animated_slide_screen.dart';
import 'package:flutter_kaigi_2024_master_of_animation/test_fade_transition_screen.dart';
import 'package:flutter_kaigi_2024_master_of_animation/test_parallax_screen.dart';
import 'package:flutter_kaigi_2024_master_of_animation/test_rotate_flutter_logo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const DebugListScreen(),
    );
  }
}

class DebugListScreen extends StatelessWidget {
  const DebugListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug List'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Test AnimatedContainer'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TestAnimatedContainerScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Test AnimatedSlide'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TestAnimatedSlideScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Test Improved AnimatedSlide'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TestImprovedAnimatedSlideScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Test FadeTransition'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TestFadeTransitionScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Test Parallax'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TestParallaxScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Test Rotate Flutter Logo'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TestRotateFlutterLogoScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
