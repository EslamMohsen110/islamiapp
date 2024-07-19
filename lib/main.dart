import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii_aapp/home/ahdeth/ahadeth_screen.dart';
import 'package:islamii_aapp/home/quran/quran_screen.dart';
import 'package:islamii_aapp/home_screen.dart';
import 'package:islamii_aapp/providers/app_config_provider.dart';
import 'package:islamii_aapp/theme/theme_mod.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppConfigProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.language),
      debugShowCheckedModeBanner: false,
      theme: provider.isDark() ? ThemeMod.darkTheme : ThemeMod.lightTheme,
      themeMode: provider.themeMode,
      darkTheme: ThemeMod.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        QuranScreen.routeName: (context) => const QuranScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        AhadethScreen.routeName: (context) => const AhadethScreen(),
      },
    );
  }
}
