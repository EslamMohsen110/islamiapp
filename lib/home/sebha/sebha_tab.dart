import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../color/color_app.dart';
import '../../providers/app_config_provider.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => MyProviderSebha(),
      builder: (context, child) {
        var pro = Provider.of<MyProviderSebha>(context);
        return Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.36,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Positioned(
                        top: 1,
                        right: 140,
                        child: provider.isDark()
                            ? Image.asset(
                                'assets/images/head_seb7a_dark.png',
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                'assets/images/head_sebha_icon.png',
                                fit: BoxFit.cover,
                              )),
                    InkWell(
                      onTap: pro.incrementCounter,
                      child: AnimatedRotation(
                        duration: const Duration(milliseconds: 65),
                        turns: pro.turn,
                        child: provider.isDark()
                            ? Image.asset('assets/images/body_seb7a_dark.png',
                                fit: BoxFit.cover)
                            : Image.asset('assets/images/sebha_icon.png',
                                fit: BoxFit.cover),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
        Text(
              AppLocalizations.of(context)!.number_of_Tasbeehs,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
        const SizedBox(
              height: 15,
            ),
        Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: provider.isDark()
                    ? ColorApp.kyellowColor
                    : ColorApp.kPrimryeColor.withOpacity(0.6),
              ),
              child: Text(
                '${pro.counter}',
                style: provider.isDark()
                    ? Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: ColorApp.kBlackColor)
                    : Theme.of(context).textTheme.displayLarge,
              ),
            ),
        const SizedBox(height: 15),
        InkWell(
              onTap: pro.incrementCounter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: provider.isDark()
                      ? ColorApp.kyellowColor
                      : ColorApp.kPrimryeColor.withOpacity(0.6),
                ),
                child: Text(
                  pro.phrases[pro.phraseIndex],
                  style: provider.isDark()
                      ? Theme.of(context).textTheme.displayLarge!.copyWith(
                            color: ColorApp.kBlackColor,
                          )
                      : Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
        const SizedBox(height: 30),
          ],
        );
      },
    );
  }
}
