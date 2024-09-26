import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro_book/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsData.logoHome,
          width: 75,
          height: 16.1,
        ),
        IconButton(
            onPressed: () {
              MessageProperty('New Version', 'This Feature A New Version');
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ))
      ],
    );
  }
}
