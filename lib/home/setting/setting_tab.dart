import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii_aapp/color/color_app.dart';
import 'package:islamii_aapp/home/setting/item_setting.dart';
import 'package:islamii_aapp/home/setting/item_theme_setting.dart';
import 'package:islamii_aapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: ColorApp.kPrimryeColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                showLanguageBottomSheetMethod();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.language == 'en'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: ColorApp.kPrimryeColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                showThemeBottomSheetMethod();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.themeMode == ThemeMode.light
                        ? AppLocalizations.of(context)!.light
                        : AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheetMethod() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ItemSetting(),
    );
  }

  void showThemeBottomSheetMethod() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ItemThemeSetting(),
    );
  }
}
