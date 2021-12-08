import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zouse/utils/assets.dart';
import 'package:zouse/utils/colors.dart';
import 'package:zouse/utils/strings.dart';
import 'package:zouse/utils/widgets.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(getStartedBG,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(logo2),
                41.height,
                Text(getStartedHeader,
                  style: primaryTextStyle(
                      size: 30,
                      color: secondaryTextColor,
                      weight: FontWeight.w800,
                      fontFamily: fontManrope
                  ),
                ),
                5.height,
                Text(getStartedSubhead,
                  textAlign: TextAlign.center,
                  style: primaryTextStyle(
                      size: 16,
                      color: secondaryTextColor,
                      weight: FontWeight.w600,
                      fontFamily: fontManrope
                  ),
                ),
                58.height,
                CommonButton(text: getStartedBtnText, onPressed: (){

                }).paddingSymmetric(horizontal: 15),
                45.height
              ],
            )
          ],
        ),
      ),
    );
  }
}
