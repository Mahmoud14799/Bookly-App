import 'package:flutter/material.dart';
import 'package:pro_book/features/search/presentation/views/widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(child: SearchViewBody()),
    );
  }
}
