import 'package:flutter/material.dart';
import 'package:islamii_aapp/home/quran/quran_screen.dart';

class ItemQuranName extends StatelessWidget {
  String title;
  int index;

  ItemQuranName({
    super.key,
    required this.title,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(QuranScreen.routeName,
            arguments: ArgesQuran(txt: title, index: index));
      },
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}

class ArgesQuran {
  String txt;
  int index;

  ArgesQuran({
    required this.txt,
    required this.index,
  });
}
