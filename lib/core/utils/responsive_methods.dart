import 'package:flutter/material.dart';

/// mobile < 600
bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;

/// tablet >= 600 && tablet <= 900

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width >= 600 &&
    MediaQuery.of(context).size.width <= 900;

/// Desktop >900
bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width > 900;
