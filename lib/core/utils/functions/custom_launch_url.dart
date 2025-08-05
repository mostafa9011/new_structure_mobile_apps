import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl({required String url}) async {
  Uri uri;

  // If the URL already has a scheme (tel:, mailto:, etc.)
  if (url.startsWith('http') ||
      url.startsWith('mailto:') ||
      url.startsWith('tel:') ||
      url.startsWith('sms:')) {
    uri = Uri.parse(url);
  }

  // Handle phone numbers like "(386) 692-4245"
  else if (RegExp(r'^\(?\+?[\d\)\s-]+$').hasMatch(url)) {
    final cleaned = _cleanPhoneNumber(url);
    uri = Uri(scheme: 'tel', path: cleaned);
  }

  // Handle emails like "example@example.com"
  else if (url.contains('@')) {
    uri = Uri(scheme: 'mailto', path: url);
  }

  // Default case: treat as website
  else {
    uri = Uri.parse('https://$url');
  }

  // Attempt to launch
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $uri';
  }
}

String _cleanPhoneNumber(String phone) {
  return phone.replaceAll(RegExp(r'[^\d+]'), '');
}
 