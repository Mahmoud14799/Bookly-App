import 'package:flutter/material.dart';
import 'package:pro_book/core/widget/custom_buttom.dart';
import 'package:pro_book/features/Home/data/models/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomButton(
          text: 'Free',
          textColor: Colors.black,
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
        ),
        CustomButton(
          onPressed: () async {
            final url = bookModel.volumeInfo.previewLink;
            openUrlInChrome(url!);
          },
          text: getText(bookModel),
          textColor: Colors.white,
          backgroundColor: const Color(0xffEF8262),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
        )
      ],
    );
  }

  getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}

void openUrlInChrome(String url) async {
  final chromeIntentUrl = Uri.parse('googlechrome://navigate?url=$url');
  if (await canLaunchUrl(chromeIntentUrl)) {
    await launchUrl(chromeIntentUrl);
  } else {
    // Fallback to launching the URL normally (in the default browser)
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
