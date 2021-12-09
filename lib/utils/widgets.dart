import 'dart:ui';

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
              color: secondaryTextColor, size: 18, fontFamily: fontManrope),
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
  TransparentButton(
      {required this.text,
      required this.onPressed,
      this.isStroked = false,
      this.height = 70.0,
      this.radius = 25.0,
      Key? key})
      : super(key: key);

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
              color: secondaryTextColor, size: 18, fontFamily: fontManrope),
        ).center(),
        decoration: boxDecoration(
            bgColor: Colors.transparent, color: Colors.transparent),
      ),
    );
    ;
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

InputDecoration fieldInputDecoration ({IconData? prefixIcon, String? hint, Color? bgColor, Color? borderColor, EdgeInsets? padding}) {
  return InputDecoration(
    contentPadding: padding ?? EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    counter: Offstage(),
    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide(color: borderColor ?? primaryTextColor)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
    ),
    fillColor: bgColor ?? primaryColor,
    hintText: hint,
    prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: primaryDarkColor) : null,
    hintStyle: secondaryTextStyle(),
    filled: true,
  );
}

// widget for facebook and google button
Widget socialAuthButton(
    String name,
    Image image
){
  return Container(
    width: 164,
    height: 54,
    padding: EdgeInsets.all(16),
    decoration: boxDecorationWithRoundedCorners(borderRadius: BorderRadius.circular(16), border: Border.all(color: primaryDarkColor)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        image,
        Text(
          name,
          style: primaryTextStyle(
            size: 16,
            color: primaryTextColor,
            weight: FontWeight.w500,
          ),
        )
      ],
    ),
  );

}

// container widget for divider decoration
Widget dividerDecoration(
    String content,
    double width
    ){
  return Container(
  width: width,
child: Row(
children: [
Divider(thickness: 2).expand(),
8.width,
Text(content, style: primaryTextStyle(size: 16, color: primaryDarkColor, weight: FontWeight.w400)),
8.width,
Divider(thickness: 2).expand(),
],
),
).center();

}

PreferredSizeWidget commonAppbar({
  IconData? startIcon,
  required String title,
  IconData? endIcon
}){
  return AppBar(
    backgroundColor: primaryColor,
    leading: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      decoration: boxDecorationWithRoundedCorners(
        backgroundColor: primaryColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: primaryDarkColor),
      ),
      child: Icon(startIcon,
      color: smallButtonsColor,),
    ).onTap((){

    }),
    title: Text(
      title,
      style: primaryTextStyle(
        size: 25,
        color: primaryTextColor,
        weight: FontWeight.w600,
    ),
    ),
    actions: [
      Padding(padding: EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: (){},
        child: Icon(endIcon
        ),
      ),)
    ],
    centerTitle: true,
    elevation: 0.0,

  );
}

// Re Usable text field all over the app
class EditText extends StatefulWidget {
  var isPassword;
  var isSecure;
  var fontSize;
  var textColor;
  var fontFamily;
  var text;
  var maxLine;
  TextEditingController? mController;

  VoidCallback? onPressed;

  EditText(
      {var this.fontSize = 16,
      var this.textColor = primaryTextColor,
      var this.fontFamily = fontManrope,
      var this.isPassword = true,
      var this.isSecure = false,
      var this.text = "",
      var this.mController,
      var this.maxLine = 1,
      Key? key})
      : super(key: key);

  @override
  _EditTextState createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    if(!widget.isSecure){
      return TextField(
        controller: widget.mController,
        obscureText: widget.isPassword,
        cursorColor: primaryTextColor,
        maxLines: widget.maxLine,
        style: TextStyle(
          fontSize: widget.fontSize,
          fontFamily: widget.fontFamily,
          color: primaryTextColor
        ),
        decoration: InputDecoration(
          hintText: widget.text,
          hintStyle: TextStyle(fontSize: 16),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryDarkColor, width: 0.5
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryDarkColor, width: 0.5
            ),
          ),
        ),
      );
    }else{
      return TextField(
        controller: widget.mController,
        obscureText: widget.isPassword,
        cursorColor: primaryTextColor,
        style: TextStyle(
          fontSize: widget.fontSize,
          color: primaryTextColor,
          fontFamily: widget.fontFamily,
        ),
        decoration: InputDecoration(
          hintText: widget.text,
          hintStyle: TextStyle( fontSize: widget.fontSize),
          suffixIcon: GestureDetector(
            onTap: (){
              setState(() {
                widget.isPassword = !widget.isPassword;
              });
            },
            child: Icon(
              widget.isPassword ? Icons.visibility : Icons.visibility_off,
              color: primaryDarkColor,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
                color: primaryDarkColor, width: 0.5
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: primaryDarkColor, width: 0.5
            ),
          ),
        ),
      );
    }
  }
}
