import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zouse/ui/onboarding.dart';
import 'package:zouse/utils/assets.dart';
import 'package:zouse/utils/colors.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async{
    var _duration = Duration(seconds: 4);
    return Timer(_duration, navigationPage);
  }
  void navigationPage(){
    setState(() {
      finish(context);
      Onboarding().launch(context);
    });
  }


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

