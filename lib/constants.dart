import 'package:flutter/material.dart';

const maxFontSize = 24.0;
const roundness = 15.0;
const Color forColorClear = Color.fromARGB(255, 246, 68, 78);

//Background
const Color backgroundColor = Color.fromARGB(255, 246, 248, 249);
const Color backgroundColordark = Color(0xFF17181A);
//Buttons
const Color backColorbasic = Color.fromARGB(255, 233, 240, 244);
const Color backColorbasicdark = Color(0xFF222427);
const Color backColorOperators = Color.fromARGB(255, 255, 149, 0);
const Color backColorEqual = Color.fromARGB(255, 46, 201, 115);
const Color backColorClear = Color.fromARGB(255, 248, 236, 237);
const Color backColorCleardark = Color(0xFF2D191E);
//Text Styles
const TextStyle calcText = TextStyle(
  fontSize: 32,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
const TextStyle calcTextdark = TextStyle(
  //fontSize: 32,
  fontSize: 32,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
const TextStyle operatorsText = TextStyle(
  fontSize: maxFontSize,
  color: Colors.white,
);
const TextStyle operatorsTextDark = TextStyle(
  fontSize: maxFontSize,
  color: Colors.white,
);
const TextStyle basicTextBlack = TextStyle(
  fontSize: maxFontSize,
  color: Colors.black,
);
const TextStyle basicTextWhite =
    TextStyle(fontSize: maxFontSize, color: Colors.white);
const TextStyle disabledText =
    TextStyle(fontSize: maxFontSize, color: Colors.black54);
const TextStyle disabledTextdark =
    TextStyle(fontSize: maxFontSize, color: Color.fromARGB(255, 246, 248, 249));
//Dark and Light
const TextStyle clearText =
    TextStyle(fontSize: maxFontSize, color: forColorClear);
