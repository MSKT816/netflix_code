import 'package:flutter/material.dart';

class SearchPagetTitle extends StatelessWidget {
  const SearchPagetTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
    );
  }
}
