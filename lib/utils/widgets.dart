import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zouse/utils/assets.dart';
import 'package:zouse/utils/colors.dart';

//re-usable button all over the app
class CommonButton extends StatefulWidget {
  var text;
  VoidCallback onPressed;
  var isStroked = false;
  var height = 70.0;
  var radius = 25.0;

  CommonButton(
      {required this.text,
      required this.onPressed,
      this.isStroked = false,
      this.height = 70.0,
      this.radius = 25.0,
      Key? key})
      : super(key: key);

  @override
  _CommonButtonState createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        //padding: EdgeInsets.fromLTRB(15, 35, 15, 15),
        alignment: Alignment.center,
        child: Text(
          widget.text,
          style: primaryTextStyle(
              color: secondaryTextColor,
              size: 18,
              fontFamily: fontManrope),
        ).center(),
        decoration:
            boxDecoration(bgColor: secondaryColor, color: Colors.transparent),
      ),
    );
  }
}

class TransparentButton extends StatefulWidget {
  var text;
  VoidCallback onPressed;
  var isStroked = false;
  var height = 70.0;
  var radius = 25.0;
  TransparentButton({
    required this.text,
    required this.onPressed,
    this.isStroked = false,
    this.height = 70.0,
    this.radius = 25.0,
    Key? key}) : super(key: key);

  @override
  _TransparentButtonState createState() => _TransparentButtonState();
}

class _TransparentButtonState extends State<TransparentButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        //padding: EdgeInsets.fromLTRB(15, 35, 15, 15),
        alignment: Alignment.center,
        child: Text(
          widget.text,
          style: primaryTextStyle(
              color: secondaryTextColor,
              size: 18,
              fontFamily: fontManrope),
        ).center(),
        decoration:
        boxDecoration(bgColor: Colors.transparent, color: Colors.transparent),
      ),
    );;
  }
}


BoxDecoration boxDecoration(
    {double radius = 25.0,
    Color color = Colors.transparent,
    Color? bgColor,
    var showShadow = false}) {
  return BoxDecoration(
    color: bgColor,
    boxShadow: showShadow
        ? defaultBoxShadow(shadowColor: shadowColorGlobal)
        : [BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}
