import 'package:flutter/material.dart';
import 'package:kokotoa/src/views/components/key_symbol.dart';

abstract class Keys {
  static KeySymbol clear = const KeySymbol('C');
  static KeySymbol sign = const KeySymbol('±');
  static KeySymbol percent = const KeySymbol('%');
  static KeySymbol divide = const KeySymbol('÷');
  static KeySymbol multiply = const KeySymbol('x');
  static KeySymbol subtract = const KeySymbol('-');
  static KeySymbol add = const KeySymbol('+');
  static KeySymbol equals = const KeySymbol('=');
  static KeySymbol decimal = const KeySymbol('.');

  static KeySymbol zero = const KeySymbol('0');
  static KeySymbol one = const KeySymbol('1');
  static KeySymbol two = const KeySymbol('2');
  static KeySymbol three = const KeySymbol('3');
  static KeySymbol four = const KeySymbol('4');
  static KeySymbol five = const KeySymbol('5');
  static KeySymbol six = const KeySymbol('6');
  static KeySymbol seven = const KeySymbol('7');
  static KeySymbol eight = const KeySymbol('8');
  static KeySymbol nine = const KeySymbol('9');
}

class CalculatorKey extends StatelessWidget {
  CalculatorKey({this.symbol});

  final KeySymbol symbol;

  @override
  Widget build(BuildContext context) {

    double size = MediaQuery.of(context).size.width / 4;
    TextStyle textStyle = Theme.of(context).textTheme.headline4.copyWith();

    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.all(2),
        width: size,
        child: Text(symbol.value, style: textStyle,),
      ),
    );
  }
}
