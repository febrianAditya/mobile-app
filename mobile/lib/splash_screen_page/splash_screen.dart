import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile/custom_colors.dart';
import 'package:mobile/profile_page/profile_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => const ProfilePage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: frameDrop,
      body: Stack(
          children: const [

            Center(
              child: Image(
                image: AssetImage("assets/icons/LogoB.png"),
                height: 120,
                width: 86,
              ),
            ),

            Align(
              alignment: Alignment(0, 0.20),
              child: Text(
                "Made With Love",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),

            Align(
              alignment: Alignment(0, 0.27),
              child: Text(
                "Learn App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  color: Color(0XFFFDA521)
                ),
              ),
            ),

            Align(
              alignment: Alignment(0.24, 0.82),
              child: Text(
                "Powered By:",
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontSize: 14
                ),
              ),
            ),

            Align(
              alignment: Alignment(0, 0.92),
              child: Image(
                image: AssetImage("assets/icons/logo_Edspert.png"),
                height: 31,
                width: 158,
              ),
            )

          ],
        ),
      );
  }
} 