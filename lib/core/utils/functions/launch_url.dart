import 'package:url_launcher/url_launcher.dart';

import 'kprint.dart';

mixin LaunchUrl {
  // url launcher function to open the link in the browser
  Future<void> launchURL(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      kprint('Could not launch');
    }
  }
}
