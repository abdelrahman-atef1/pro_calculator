import 'package:flutter/material.dart';
import 'constants.dart';
import 'main.dart';

class ProLight extends StatefulWidget {
  const ProLight({Key? key}) : super(key: key);

  @override
  State<ProLight> createState() => _ProLightState();
}

class _ProLightState extends State<ProLight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark ? backgroundColordark : backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                      child: RichText(
                          textAlign: TextAlign.right,
                          text: TextSpan(children: [
                            TextSpan(
                              text: '0asd sdf xzcv xbxcgdf',
                              style: dark ? disabledTextdark : disabledText,
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
                        '1395',
                        textAlign: TextAlign.right,
                        style: dark ? calcTextdark : calcText,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                    child: FittedBox(
                      alignment: Alignment.centerRight,
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'View History',
                        textAlign: TextAlign.right,
                        style: dark ? disabledTextdark : disabledText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 15, 15, 0.0),
                  child: Material(
                    color: dark ? backColorbasicdark : backColorbasic,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 6,
                    borderRadius: BorderRadius.circular(roundness),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Ink.image(
                            height: 25,
                            width: 30,
                            colorFilter: dark
                                ? const ColorFilter.mode(
                                    Colors.black54, BlendMode.dstIn)
                                : null,
                            image: dark
                                ? const AssetImage(
                                    'assets/images/light_mode.png')
                                : const AssetImage(
                                    'assets/images/dark_mode.png')),
                      ),
                      onTap: () {
                        setState(() {
                          dark = !dark;
                        });
                      },
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: Material(
                          color: dark ? backColorCleardark : backColorClear,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'C',
                                  style: TextStyle(
                                      fontSize: maxFontSize,
                                      color: forColorClear,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Material(
                              color: dark ? backColorbasicdark : backColorbasic,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius: BorderRadius.circular(roundness),
                              child: InkWell(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(4.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'e',
                                      style: dark
                                          ? basicTextWhite
                                          : basicTextBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ))),
                    Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Material(
                              color: dark
                                  ? dark
                                      ? backColorbasicdark
                                      : backColorbasicdark
                                  : dark
                                      ? backColorbasicdark
                                      : backColorbasic,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius: BorderRadius.circular(roundness),
                              child: InkWell(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(4.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'π',
                                      style: dark
                                          ? basicTextWhite
                                          : basicTextBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ))),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                        child: Material(
                          color: backColorOperators,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '/',
                                  style: operatorsText,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: Material(
                          color: dark
                              ? dark
                                  ? backColorbasicdark
                                  : backColorbasicdark
                              : dark
                                  ? backColorbasicdark
                                  : backColorbasic,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '7',
                                  style: dark ? basicTextWhite : basicTextBlack,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Material(
                              color: dark
                                  ? dark
                                      ? backColorbasicdark
                                      : backColorbasicdark
                                  : dark
                                      ? backColorbasicdark
                                      : backColorbasic,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius: BorderRadius.circular(roundness),
                              child: InkWell(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(4.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '4',
                                      style: dark
                                          ? basicTextWhite
                                          : basicTextBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ))),
                    Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Material(
                              color: dark
                                  ? dark
                                      ? backColorbasicdark
                                      : backColorbasicdark
                                  : dark
                                      ? backColorbasicdark
                                      : backColorbasic,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius: BorderRadius.circular(roundness),
                              child: InkWell(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(4.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '9',
                                      style: dark
                                          ? basicTextWhite
                                          : basicTextBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ))),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                        child: Material(
                          color: backColorOperators,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'X',
                                  style: operatorsText,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: Material(
                          color: dark
                              ? dark
                                  ? backColorbasicdark
                                  : backColorbasicdark
                              : dark
                                  ? backColorbasicdark
                                  : backColorbasic,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '4',
                                  style: dark ? basicTextWhite : basicTextBlack,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Material(
                              color: dark
                                  ? dark
                                      ? backColorbasicdark
                                      : backColorbasicdark
                                  : dark
                                      ? backColorbasicdark
                                      : backColorbasic,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius: BorderRadius.circular(roundness),
                              child: InkWell(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(4.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '5',
                                      style: dark
                                          ? basicTextWhite
                                          : basicTextBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ))),
                    Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Material(
                              color: dark ? backColorbasicdark : backColorbasic,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius: BorderRadius.circular(roundness),
                              child: InkWell(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(4.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '6',
                                      style: dark
                                          ? basicTextWhite
                                          : basicTextBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ))),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                        child: Material(
                          color: backColorOperators,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '-',
                                  style: operatorsText,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: Material(
                          color: dark ? backColorbasicdark : backColorbasic,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '1',
                                  style: dark ? basicTextWhite : basicTextBlack,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Material(
                              color: dark ? backColorbasicdark : backColorbasic,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius: BorderRadius.circular(roundness),
                              child: InkWell(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(4.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '2',
                                      style: dark
                                          ? basicTextWhite
                                          : basicTextBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ))),
                    Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Material(
                              color: dark ? backColorbasicdark : backColorbasic,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius: BorderRadius.circular(roundness),
                              child: InkWell(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(4.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '3',
                                      style: dark
                                          ? basicTextWhite
                                          : basicTextBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ))),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                        child: Material(
                          color: backColorOperators,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '+',
                                  style: operatorsText,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: Material(
                          color: dark ? backColorbasicdark : backColorbasic,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '0',
                                  style: dark ? basicTextWhite : basicTextBlack,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                            child: Material(
                              color: dark ? backColorbasicdark : backColorbasic,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderRadius: BorderRadius.circular(roundness),
                              child: InkWell(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.all(4.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '.',
                                      style: dark
                                          ? basicTextWhite
                                          : basicTextBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ))),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Material(
                          color: backColorEqual,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(roundness),
                          child: InkWell(
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4.0),
                              child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '=',
                                  style: operatorsText,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
