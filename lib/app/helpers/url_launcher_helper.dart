import 'package:url_launcher/url_launcher.dart';

class URLLauncherHelper {
  static Future<void> openURL(String url) async {
    try {
      final canOpen = await canLaunchUrl(Uri.parse(url));
      if (canOpen) {
        await launchUrl(Uri.parse(url));
      }
    } catch (e) {
      rethrow;
    }
  }
}
