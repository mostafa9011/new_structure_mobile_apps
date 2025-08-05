// 13:00:00 => 1:00 PM for example
import 'package:intl/intl.dart';

import '../../../config/routes/route_manager.dart';
import '../../extensions/context_extension.dart';

// 13:00:00 => 1:00 PM for example
String get12HourFormat(String time) {
  final parts = time.split(':');
  final hour = int.parse(parts[0]);
  final minute = int.parse(parts[1]);
  final period = hour >= 12
      ? RouteManager.currentContext.tr.pm
      : RouteManager.currentContext.tr.am;
  final formattedHour = hour % 12 == 0 ? 12 : hour % 12;
  return '$formattedHour:${minute.toString().padLeft(2, '0')} $period';
}

// Parse the input string to a DateTime object // 2023-05-06 or 2023-05-06T00:00:00
String formatDate(String inputDate) {
  final DateTime date = DateTime.parse(inputDate);

  // Format the date as "Monday, 6 May"
  final String formattedDate = DateFormat(
    'EEEE, d MMMM',
    RouteManager.currentContext.languageCode,
  ).format(date);

  return formattedDate;
}
