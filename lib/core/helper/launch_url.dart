import 'package:flutter/material.dart';
import 'package:pro_book/core/helper/snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

void openUrlInChrome(String? url, BuildContext context) async {
  if (url != null) {
    final chromeIntentUrl = Uri.parse('googlechrome://navigate?url=$url');
    if (await canLaunchUrl(chromeIntentUrl)) {
      await launchUrl(chromeIntentUrl);
    } else {
      // Fallback to launching the URL normally (in the default browser)
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        snackBar(context, 'cant launch url: $url');
      }
    }
  }
}
