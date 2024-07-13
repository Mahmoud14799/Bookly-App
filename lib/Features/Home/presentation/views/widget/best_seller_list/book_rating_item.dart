import 'package:flutter/material.dart';
import 'package:pro_book/core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 35.3,
        ),
        Icon(
          size: 15,
          Icons.star,
          color: Colors.yellow.shade700,
        ),
        const SizedBox(
          width: 6.2,
        ),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(
          width: 5,
        ),
        const Text('(2551)', style: Styles.textStyle14),
      ],
    );
  }
}
