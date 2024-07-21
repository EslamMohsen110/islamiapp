import 'package:flutter/material.dart';

class ItemQuranScreen extends StatelessWidget {
  String txt;
  int index;

  ItemQuranScreen({
    super.key,
    required this.txt,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$txt(${index + 1})',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
