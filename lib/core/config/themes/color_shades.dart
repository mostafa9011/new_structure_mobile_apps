import 'package:flutter/material.dart';

class ColorShades {
  final Map<int, Color> shades;
  final int defaultShadeIndex;

  const ColorShades({
    required this.shades,
    this.defaultShadeIndex = 500,
  });

  /// Operator [] for accessing shades
  Color operator [](int? shade) {
    if (shade == null) {
      return defaultShade;
    }
    return shades[shade] ?? defaultShade;
  }

  /// Default shade is 500 if it exists, otherwise the first shade
  Color get defaultShade => shades[defaultShadeIndex] ?? shades.values.first;
}
