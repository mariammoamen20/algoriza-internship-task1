import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize ;
  final String textFontFamily;
  final double textHeight;


  const CustomText({Key? key,
    required this.text,
    required this.textColor,
    this.fontSize = 12,
    this.textFontFamily = 'Pop',
    this.textHeight = 1.3,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontFamily: textFontFamily,
          height: textHeight,
        ),
      ),
    );
  }
}
