import 'package:flutter/material.dart';
import 'package:zouse/utils/assets.dart';
import 'package:zouse/utils/colors.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: primaryColor
            ),
          ),
          Align(
            alignment: Alignment.center,
              child: Image.asset(logo)
          )
        ],
      ),
    );
  }
}

