import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii_aapp/color/color_app.dart';
import 'package:islamii_aapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemThemeSetting extends StatefulWidget {
  const ItemThemeSetting({super.key});

  @override
  State<ItemThemeSetting> createState() => _ItemSettingState();
}

class _ItemSettingState extends State<ItemThemeSetting> {
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
                provider.changeTheme(ThemeMode.light);
              },
              child: provider.isDark()
                  ? unSelectedTheme(AppLocalizations.of(context)!.light)
                  : selectedTheme(AppLocalizations.of(context)!.light),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
              },
              child: provider.themeMode == ThemeMode.dark
                  ? selectedTheme(AppLocalizations.of(context)!.dark)
                  : unSelectedTheme(AppLocalizations.of(context)!.dark),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectedTheme(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: ColorApp.kPrimryeColor),
        ),
        const Icon(Icons.check, size: 25, color: ColorApp.kPrimryeColor)
      ],
    );
  }

  Widget unSelectedTheme(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
