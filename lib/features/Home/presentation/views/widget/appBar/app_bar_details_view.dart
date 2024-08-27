import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                onPressed: () {},
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
