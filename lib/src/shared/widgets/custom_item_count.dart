import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class ItemCount extends StatelessWidget {
  final CounterChangeCallback onChanged;

  ItemCount({
    Key? key,
    required num initialValue,
    required this.minValue,
    required this.maxValue,
    required this.onChanged,
    required this.decimalPlaces,
    this.color,
    this.textStyle,
    this.step = 1,
    this.buttonSizeWidth = 30,
    this.buttonSizeHeight = 25,
  })  : assert(maxValue > minValue),
        assert(initialValue >= minValue && initialValue <= maxValue),
        assert(step > 0),
        selectedValue = initialValue,
        super(key: key);

  ///min value user can pick
  final num minValue;

  ///max value user can pick
  final num maxValue;

  /// decimal places required by the counter
  final int decimalPlaces;

  ///Currently selected integer value
  num selectedValue;

  /// if min=0, max=5, step=3, then items will be 0 and 3.
  final num step;

  /// indicates the color of fab used for increment and decrement
  Color? color;

  /// text syle
  TextStyle? textStyle;

  final double buttonSizeWidth, buttonSizeHeight;

  void _incrementCounter() {
    if (selectedValue + step <= maxValue) {
      onChanged((selectedValue + step));
    }
  }

  void _decrementCounter() {
    if (selectedValue - step >= minValue) {
      onChanged((selectedValue - step));
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        border: Border.all(
          color: Colors.black, // Border color
          width: 2.0,          // Border width
        ),
        borderRadius: BorderRadius.circular(8.0), // Optional: Rounded corners
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: _decrementCounter,
            child: SizedBox(
              width: buttonSizeWidth,
              height: buttonSizeHeight,
              child: Container(
                decoration: ShapeDecoration(
                    //color: color ?? lightTheme.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: const Center(
                  child: Text(
                    '-',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            child: Text(
                '${num.parse((selectedValue).toStringAsFixed(decimalPlaces))}',
                style: textStyle),
          ),
          GestureDetector(
            onTap: _incrementCounter,
            child: SizedBox(
              width: buttonSizeWidth,
              height: buttonSizeHeight,
              child: Container(
                decoration: ShapeDecoration(
                    //color: color ?? lightTheme.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}