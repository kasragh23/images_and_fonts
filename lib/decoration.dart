import 'dart:math';

import 'package:flutter/material.dart';

class Decorations extends StatefulWidget {
  const Decorations({super.key});

  @override
  State<Decorations> createState() => _DecorationsState();
}

class _DecorationsState extends State<Decorations> {
  Color redie = Colors.red;
  final Color _previousColor = Colors.red;
  int _counter = 0;
  List<Color> colorss = [
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.blue.shade900,
    Colors.yellowAccent,
  ];
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            _counter = _counter + 1;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('You tapped on it $_counter times'),
                duration: const Duration(milliseconds: 800 ),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () => setState(() {
                    redie = _previousColor;
                  }),
                ),
              ),
            );
            print('u tap $_counter'); // to check it works correctly

            redie = colorss[_random.nextInt(colorss.length)];
          }),
          child: Container(
            width: 250.0,
            height: 300.0,
            decoration: BoxDecoration(
              color: redie,
              border: Border.all(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: const Center(
              child: Text('Gesture!'),
            ),
          ),
        ),
      ),
    );
  }
}
