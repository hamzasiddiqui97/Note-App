import 'package:flutter/material.dart';
import 'res/strings.dart';
import 'views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
