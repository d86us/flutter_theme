import 'package:flutter/material.dart';
import 'theme.dart';
import 'water_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: WaterForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}
