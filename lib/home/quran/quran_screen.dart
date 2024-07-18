import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii_aapp/color/color_app.dart';
import 'package:islamii_aapp/home/quran/item_quran_name.dart';
import 'package:islamii_aapp/home/quran/item_quran_screen.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class QuranScreen extends StatefulWidget {
  static const String routeName = 'QuranScreen';

  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List verses = [];

  void loadingQuran(int index) async {
    String quranFiless =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> cutFile = quranFiless.split('\n');
    verses = cutFile;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var arges = ModalRoute.of(context)!.settings.arguments as ArgesQuran;
    loadingQuran(arges.index);

    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(children: [
      provider.isDark()
          ? Image.asset(
              'assets/images/bg_dark.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/background.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            arges.txt,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02,
            vertical: MediaQuery.of(context).size.height * 0.03,
          ),
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02,
          ),
          decoration: BoxDecoration(
            color: provider.isDark()
                ? ColorApp.kPrimryDarkColor
                : ColorApp.kWhiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.builder(
            itemCount: verses.length,
            itemBuilder: (context, index) {
              return ItemQuranScreen(
                txt: verses[index],
                index: index,
              );
            },
          ),
        ),
      )
    ]);
  }
}
