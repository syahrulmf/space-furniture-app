import 'package:flutter/material.dart';
import 'package:space/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Space',
            style: greyTextStyle.copyWith(fontSize: 30, fontWeight: bold),
          ),
        ),
      ),
    );
  }
}
