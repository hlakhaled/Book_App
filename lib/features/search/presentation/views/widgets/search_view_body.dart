import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search",
            suffixIcon: const Icon(Icons.search),
            hintStyle: TextStyle(color: kWhite.withOpacity(.50)),
            border: outlineBorder(),
            enabledBorder: outlineBorder(),
            focusedBorder: outlineBorder()),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: kWhite));
  }
}
