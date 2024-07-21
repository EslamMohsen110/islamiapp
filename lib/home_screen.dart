import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii_aapp/color/color_app.dart';
import 'package:islamii_aapp/home/ahdeth/ahadeth_tab.dart';
import 'package:islamii_aapp/home/quran/quran_tab.dart';
import 'package:islamii_aapp/home/radio/radio_tab.dart';
import 'package:islamii_aapp/home/sebha/sebha_tab.dart';
import 'package:islamii_aapp/home/setting/setting_tab.dart';
import 'package:islamii_aapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> widgetList = [
    QuranTab(),
    const AhadethTab(),
    const SebhaTab(),
    const RadioTab(),
    const SettingTab()
  ];

  void onPressed(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
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
              AppLocalizations.of(context)!.bar_title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onPressed,
            items: [
              BottomNavigationBarItem(
                backgroundColor: provider.isDark()
                    ? ColorApp.kPrimryDarkColor
                    : ColorApp.kPrimryeColor,
                icon: const ImageIcon(AssetImage('assets/images/quran.png')),
                label: AppLocalizations.of(context)!.quran,
              ),
              BottomNavigationBarItem(
                  backgroundColor: provider.isDark()
                      ? ColorApp.kPrimryDarkColor
                      : ColorApp.kPrimryeColor,
                  icon: const ImageIcon(AssetImage('assets/images/hadeth.png')),
                  label: AppLocalizations.of(context)!.ahadeth),
              BottomNavigationBarItem(
                  backgroundColor: provider.isDark()
                      ? ColorApp.kPrimryDarkColor
                      : ColorApp.kPrimryeColor,
                  icon: const ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(
                  backgroundColor: provider.isDark()
                      ? ColorApp.kPrimryDarkColor
                      : ColorApp.kPrimryeColor,
                  icon: const ImageIcon(AssetImage('assets/images/radio.png')),
                  label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  backgroundColor: provider.isDark()
                      ? ColorApp.kPrimryDarkColor
                      : ColorApp.kPrimryeColor,
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings)
            ],
          ),
          body: widgetList[currentIndex],
        ),
      ],
    );
  }
}
