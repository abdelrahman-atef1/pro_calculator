import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  String text;
  TextStyle? textStyle;
  Color? fillColor;
  Function callBack;
  Widget? child;
  CalcButton(
      {Key? key,
      required this.text,
      this.textStyle,
      this.fillColor,
      required this.callBack,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: TextButton(
          onPressed: () {
            callBack(text);
          },
          child: child ??
              Text(
                text,
                style:
                    GoogleFonts.rubik(textStyle: textStyle ?? basicTextBlack),
              ),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(60, 60)),
            maximumSize: MaterialStateProperty.all(const Size(500, 500)),
            backgroundColor:
                MaterialStateProperty.all(fillColor ?? backColorbasic),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(roundness),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
