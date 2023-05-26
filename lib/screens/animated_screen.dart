import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 111;
  double _height = 111;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(22);

  void changeShape() {
    final Random random = Random();
    setState(() {
      _width = random.nextInt(222) + 77;
      _height = random.nextInt(333) + 77;
      _borderRadius = BorderRadius.circular(random.nextInt(17) + 17);
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container Screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          curve: Curves.easeOutCubic,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: const Duration(milliseconds: 300),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(
          Icons.play_circle_outline_rounded,
          size: 33,
        ),
      ),
    );
  }
}
