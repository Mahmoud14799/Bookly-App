import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: buildOutLineInputBorder(borderColor: Colors.amber),
          enabledBorder: buildOutLineInputBorder(borderColor: Colors.grey),
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ))),
    );
  }

  OutlineInputBorder buildOutLineInputBorder(
      {Color borderColor = Colors.white}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: borderColor,
      ),
    );
  }
}
