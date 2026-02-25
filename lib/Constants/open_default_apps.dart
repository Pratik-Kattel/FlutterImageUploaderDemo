import 'package:url_launcher/url_launcher.dart';

class OpenDefaultApps {
  // Opens the Facebook profile in an external browser or app
  static Future<void> openFacebook() async {
    final Uri url = Uri.parse("https://www.facebook.com/pratik.jodzx");

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      // Throws an error if the URL cannot be opened
      throw Exception("Targeted URL not found $url");
    }
  }

  // Opens the Instagram profile in an external browser or app
  static Future<void> openInstagram() async {
    final Uri url = Uri.parse(
      "https://www.instagram.com/_ppprrraaatttiiikkk_/",
    );

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception("Targeted URL not found $url");
    }
  }

  // Opens the GitHub profile in an external browser or app
  static Future<void> openGit() async {
    final Uri url = Uri.parse("https://github.com/Pratik-Kattel");

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception("Targeted URL not found $url");
    }
  }

  // Opens the LinkedIn profile in an external browser or app
  static Future<void> openLinkedin() async {
    final Uri url = Uri.parse(
      "https://www.linkedin.com/in/pratik-kattel-281a71326/",
    );

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception("Targeted URL not found $url");
    }
  }

  // Opens the phone dialer with the specified number
  static Future<void> openPhone() async {
    final Uri url = Uri.parse("tel:9827388429");

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception("Targeted URL not found $url");
    }
  }
}
