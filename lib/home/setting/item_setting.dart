import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii_aapp/color/color_app.dart';
import 'package:islamii_aapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemSetting extends StatefulWidget {
  const ItemSetting({super.key});

  @override
  State<ItemSetting> createState() => _ItemSettingState();
}

class _ItemSettingState extends State<ItemSetting> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      color:
          provider.isDark() ? ColorApp.kPrimryDarkColor : ColorApp.kWhiteColor,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage('en');
              },
              child: provider.language == 'en'
                  ? selectedLanguage(AppLocalizations.of(context)!.english)
                  : unSelectedLanguage(AppLocalizations.of(context)!.english),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
              child: provider.language == 'ar'
                  ? selectedLanguage(AppLocalizations.of(context)!.arabic)
                  : unSelectedLanguage(AppLocalizations.of(context)!.arabic),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectedLanguage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme.headlineMedium,
        ),
        const Icon(Icons.check, size: 25, color: ColorApp.kPrimryeColor)
      ],
    );
  }

  Widget unSelectedLanguage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
