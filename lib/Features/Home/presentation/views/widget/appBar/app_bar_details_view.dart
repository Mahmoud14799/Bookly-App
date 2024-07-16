import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AppBarDetailsView extends StatelessWidget {
  const AppBarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon:  Icon(
            FontAwesomeIcons.circleXmark,
            size: 20,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.banSmoking,
              size: 15,
            ))
      ],
    );
  }
}
