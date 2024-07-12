import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pro_book/Features/Home/presentation/views/widget/custom_app_bar.dart';
import 'package:pro_book/core/utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          CustomListViewItem()
        ],
      ),
    );
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage(AssetsData.testIMage), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
