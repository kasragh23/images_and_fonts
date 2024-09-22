import 'package:flutter/material.dart';
import 'package:images_and_fonts/decoration.dart';
import 'package:images_and_fonts/responsive_pics.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Decorations(),
    );
  }
}
