import 'package:flutter/widgets.dart';

/// Check if the scroll is at the edge of the screen (bottom or top)
bool isScrollAtEdge({
  required ScrollController controller,

  /// If true, check if the scroll is at the bottom edge of the screen
  ///
  /// If false, check if the scroll is at the top edge of the screen
  bool maxExtent = true,
}) {
  final double pixels = controller.position.pixels;

  if (maxExtent) {
    return pixels == controller.position.maxScrollExtent;
  }

  return pixels == controller.position.minScrollExtent;
}
