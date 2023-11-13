import 'package:flutter/material.dart';
import 'package:news_app_wscube/screens/mobile%20screens/home_screen.dart';
import 'package:news_app_wscube/screens/mobile%20screens/splash_screen.dart';
import 'package:news_app_wscube/screens/web%20screens/web_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WebHomePage(),
    );
  }
}
