import 'package:flutter/material.dart';

const Color _customPurple = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customPurple,
  Colors.teal,
  Colors.blue,
  Colors.green,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < _colorThemes.length - 1,
        ' Colors must be between 0 and ${_colorThemes.length}',
      );

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
