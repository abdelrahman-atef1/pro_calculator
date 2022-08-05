import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:pro_calculator/widgets/calc_button.dart';
import 'constants.dart';
import 'package:math_expressions/math_expressions.dart';
//import 'package:flutter/services.dart';

bool focused = true;
bool dark = false;
var _expression = '0';
var _result = '';
bool _allowDot = true;
TextStyle _expressionTextStyle = calcText;
TextStyle _resultTextStyle = disabledText;
String _expressionLast = '';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pro Calculator',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'SofiaPro',
        backgroundColor: backgroundColor,
      ),
      home: const MyHomePage(title: 'Pro Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void buttonPress(String text) {
    setState(() {
      focused = true;
      //HapticFeedback.heavyImpact();
      setTextStyle();
      _expressionLast =
          _expression.substring(_expression.length - 1, _expression.length);
      if (_expression == '0') {
        if (text == '%' ||
            text == '÷' ||
            text == 'x' ||
            text == '+' ||
            text == '-' ||
            text == '.') {
          _expression += text;
          _allowDot = false;
        } else {
          _expression = text;
        }
      } else if (_expressionLast == '%' ||
          _expressionLast == '÷' ||
          _expressionLast == 'x' ||
          _expressionLast == '+' ||
          _expressionLast == '-') {
        _allowDot = true;
        if (text == '%' ||
            text == '÷' ||
            text == 'x' ||
            text == '+' ||
            text == '-') {
          _expression = _expression.substring(0, _expression.length - 1) + text;
        } else {
          if (!(_expression.contains('.') && text == '.')) {
            _expression += text;
          }
        }
      } else if (text == '.') {
        if (_allowDot) {
          _allowDot = false;
          _expression += text;
        }

        /*if (!(_expression.contains('.') && text == '.')) {
          _expression += text;
        }*/
      } else {
        _expression += text;
      }
    });
  }

  void allClear(String text) {
    setState(() {
      _allowDot = true;
      _expression = '0';
      _result = '';
      focused = true;
      setTextStyle();
    });
  }

  void clear(String text) {
    setState(() {
      _expressionLast =
          _expression.substring(_expression.length - 1, _expression.length);
      if (_expressionLast == '.') _allowDot = true;
      _expression.length == 1
          ? _expression = '0'
          : _expression = _expression.substring(0, _expression.length - 1);
      focused = true;
      setTextStyle();
    });
  }

  void setTextStyle() {
    if (focused == false) {
      if (dark) {
        _expressionTextStyle = disabledTextdark;
        _resultTextStyle = calcTextdark;
      } else {
        _expressionTextStyle = disabledText;
        _resultTextStyle = calcText;
      }
    } else {
      if (dark) {
        _expressionTextStyle = calcTextdark;
        _resultTextStyle = disabledTextdark;
      } else {
        _expressionTextStyle = calcText;
        _resultTextStyle = disabledText;
      }
    }
  }

  void scintificSwitch(String text) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      duration: Duration(
        seconds: 1,
        milliseconds: 500,
      ),
      content: Text(
        'Scientific Calculator Is Coming Soon',
        textAlign: TextAlign.center,
      ),
    ));
  }

  void historyView() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      duration: Duration(
        seconds: 1,
        milliseconds: 500,
      ),
      content: Text(
        'History Viewer Is Coming Soon',
        textAlign: TextAlign.center,
      ),
    ));
  }

  void result(String text) {
    try {
      Parser p = Parser();
      String realExpreation = _expression.replaceAll('÷', '/');
      realExpreation = realExpreation.replaceAll('x', '*');
      Expression exp = p.parse(realExpreation);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      var r = eval % 1 == 0 ? eval.toInt() : eval;
      /*RegExp regex = RegExp(r"([.]*0)(?!.*\d)");
      String s = eval.toString().replaceAll(regex, "");*/
      setState(() {
        _result = r.toString();
        focused = false;
        setTextStyle();
      });
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark ? backgroundColordark : backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerRight,
                child: RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(children: [
                      TextSpan(
                        text: _expression,
                        style: _expressionTextStyle,
                      )
                    ])),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
              child: FittedBox(
                alignment: Alignment.centerRight,
                fit: BoxFit.scaleDown,
                child: Text(
                  '= $_result',
                  textAlign: TextAlign.right,
                  style: _resultTextStyle,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
              child: FittedBox(
                alignment: Alignment.centerRight,
                fit: BoxFit.scaleDown,
                child: GestureDetector(
                  child: Text(
                    'View History',
                    textAlign: TextAlign.right,
                    style: dark ? disabledTextdark : disabledText,
                  ),
                  onTap: historyView,
                ),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.fromLTRB(8, 15, 15, 8),
              child: Material(
                color: dark ? backColorbasicdark : backColorbasic,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 3,
                borderRadius: BorderRadius.circular(roundness),
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Ink.image(
                        colorFilter: dark
                            ? const ColorFilter.mode(
                                Colors.black54, BlendMode.dstIn)
                            : null,
                        image: dark
                            ? const AssetImage('assets/images/light_mode.png')
                            : const AssetImage('assets/images/dark_mode.png')),
                  ),
                  onTap: () {
                    setState(() {
                      dark = !dark;
                      setTextStyle();
                    });
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalcButton(
                  text: 'AC',
                  textStyle: clearText,
                  fillColor: dark ? backColorCleardark : backColorClear,
                  callBack: allClear,
                ),
                CalcButton(
                  text: '←',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: clear,
                  child: const Icon(
                    Icons.backspace_outlined,
                    color: forColorClear,
                  ),
                ),
                CalcButton(
                  text: '%',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: '÷',
                  textStyle: operatorsText,
                  fillColor: dark
                      ? backColorOperators.withAlpha(200)
                      : backColorOperators,
                  callBack: buttonPress,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalcButton(
                  text: '7',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: '8',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: '9',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: 'x',
                  textStyle: operatorsText,
                  fillColor: dark
                      ? backColorOperators.withAlpha(200)
                      : backColorOperators,
                  callBack: buttonPress,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalcButton(
                  text: '4',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: '5',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: '6',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: '-',
                  textStyle: operatorsText,
                  fillColor: dark
                      ? backColorOperators.withAlpha(200)
                      : backColorOperators,
                  callBack: buttonPress,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalcButton(
                  text: '1',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: '2',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: '3',
                  fillColor: dark ? backColorbasicdark : backColorbasic,
                  textStyle: dark ? basicTextWhite : basicTextBlack,
                  callBack: buttonPress,
                ),
                CalcButton(
                  text: '+',
                  textStyle: operatorsText,
                  fillColor: dark
                      ? backColorOperators.withAlpha(200)
                      : backColorOperators,
                  callBack: buttonPress,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalcButton(
                    text: 'Sci',
                    textStyle: operatorsText,
                    fillColor: dark
                        ? backColorOperators.withAlpha(200)
                        : backColorOperators,
                    callBack: scintificSwitch,
                    child: const Icon(
                      Icons.screen_rotation_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  CalcButton(
                    text: '0',
                    fillColor: dark ? backColorbasicdark : backColorbasic,
                    textStyle: dark ? basicTextWhite : basicTextBlack,
                    callBack: buttonPress,
                  ),
                  CalcButton(
                    text: '.',
                    fillColor: dark ? backColorbasicdark : backColorbasic,
                    textStyle: dark ? basicTextWhite : basicTextBlack,
                    callBack: buttonPress,
                  ),
                  CalcButton(
                    text: '=',
                    textStyle: operatorsText,
                    fillColor:
                        dark ? backColorEqual.withAlpha(200) : backColorEqual,
                    callBack: result,
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
