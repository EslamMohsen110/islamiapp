import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii_aapp/home/ahdeth/item_ahadeth_name.dart';

import '../../color/color_app.dart';

class AhadethTab extends StatefulWidget {
  static const String routeName = 'AhadethTab';

  const AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<Hadeth> viewAhadeth = [];

  void loadingAhadeth() async {
    String ahadethFiless =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> cutFile = ahadethFiless.split('#\r\n');

    for (int i = 0; i < cutFile.length; i++) {
      List<String> cutAllLine = cutFile[i].split('\n');
      String title = cutAllLine[0];
      cutAllLine.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: cutAllLine);
      viewAhadeth.add(hadeth);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (viewAhadeth.isEmpty) {
      loadingAhadeth();
    }
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/hadeth_icon.png',
          ),
        ),
        const Divider(
          color: ColorApp.kPrimryeColor,
          thickness: 4,
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const Divider(
          color: ColorApp.kPrimryeColor,
          thickness: 4,
        ),
        Expanded(
          flex: 3,
          child: viewAhadeth.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                    color: ColorApp.kPrimryeColor,
                  ),
                )
              : ListView.separated(
                  itemCount: viewAhadeth.length,
                  separatorBuilder: (context, index) => const Divider(
                    color: ColorApp.kPrimryeColor,
                    thickness: 2,
                  ),
                  itemBuilder: (context, index) {
                    return ItemAhadethName(hadeth: viewAhadeth[index]);
                  },
                ),
        ),
      ],
    );
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({
    required this.title,
    required this.content,
  });
}
