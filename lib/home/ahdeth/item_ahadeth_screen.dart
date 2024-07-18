import 'package:flutter/material.dart';

class ItemAhadethScreen extends StatelessWidget {
  String content;

  ItemAhadethScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}
