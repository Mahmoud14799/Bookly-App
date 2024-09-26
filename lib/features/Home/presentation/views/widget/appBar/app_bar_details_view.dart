import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_book/core/helper/snack_bar.dart';

class AppBarDetailsView extends StatelessWidget {
  const AppBarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.close, size: 31),
            ),
            IconButton(
                onPressed: () {
                  MessageProperty('version', 'This Features a new Version');
                  snackBar(context, 'this features the new version');
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                ))
          ],
        ),
      ),
    );
  }
}
