import 'package:flutter/material.dart';
import 'package:islamii_aapp/home/ahdeth/ahadeth_screen.dart';
import 'package:islamii_aapp/home/ahdeth/ahadeth_tab.dart';

class ItemAhadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemAhadethName({super.key, required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(AhadethScreen.routeName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
