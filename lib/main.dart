import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:news_feed/MyHomePage.dart';


void main() => runApp(
  DevicePreview(
    enabled: false,
    // enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Feed',
      home: MyHomePage(title: 'News Feed'),
    );
  }
}

