import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    double screenWidth = MediaQuery.of(context).size.width;
    double maxWidth = 600;
    return Scaffold(
      backgroundColor: Color(0xff1f2227),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: -min(screenWidth * 0.1, maxWidth * 0.1),
              top: -min(screenWidth * 0.1, maxWidth * 0.1),
              child: Image.asset("images/beyong-logo- black gradient.png", width: min(screenWidth * 0.8, maxWidth * 0.8),),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "images/logo-icon.png",
                    width: min((screenWidth / 3), (maxWidth / 3)),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: min(screenWidth * 0.05, maxWidth * 0.05),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Beyond",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Dating"),
                      ],
                    ),
                  ),
                  Text(
                    "The Best Dating, Friendship and Interest Matching",
                    style: TextStyle(
                      color: Color(0xffee2f7d),
                      fontWeight: FontWeight.w600,
                      fontSize: min(screenWidth * 0.035, maxWidth * 0.035),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
