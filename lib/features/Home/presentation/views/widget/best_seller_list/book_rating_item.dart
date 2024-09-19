import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro_book/core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.averageRating,
      required this.countRating});
  final MainAxisAlignment mainAxisAlignment;
  final num averageRating;
  final int countRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          size: 13,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.2,
        ),
        Text(averageRating.toString(), style: Styles.textStyle16),
        const SizedBox(
          width: 5,
        ),
        Opacity(
            opacity: 0.5,
            child:
                Text('(${countRating.toString()})', style: Styles.textStyle14)),
      ],
    );
  }
}
