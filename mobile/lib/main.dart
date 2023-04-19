import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/splash_screen_page/splash_screen.dart';

void main() {
  // Create Transparant status bar
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent)
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // untuk menghilangkan label "Debug"
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Color(0xffECF2FF),
      ),
      home: const SplashScreenPage(),
    );
  }
}

