import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../color/color_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../providers/app_config_provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turn = 0.4;
  int counter = 1;
  int phraseIndex = 0;
  List<String> phrases = ['سبحان الله', 'الحمد لله', 'الله أكبر'];

  void incrementCounter() {
    setState(
      () {
        counter++;
        turn++;
        if (counter == 34) {
          counter = 1;
          phraseIndex = (phraseIndex + 1) % phrases.length;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        Container(
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
                  onTap: incrementCounter,
                  child: AnimatedRotation(
                    duration: Duration(milliseconds: 65),
                    turns: turn,
                    child: provider.isDark()
                        ? Image.asset('assets/images/body_seb7a_dark.png',
                            fit: BoxFit.cover)
                        : Image.asset('assets/images/sebha_icon.png',
                            fit: BoxFit.cover),
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 15,
        ),
        Text(
          AppLocalizations.of(context)!.number_of_Tasbeehs,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(
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
            '$counter',
            style: provider.isDark()
                ? Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: ColorApp.kBlackColor)
                : Theme.of(context).textTheme.bodySmall,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: incrementCounter,
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
              '${phrases[phraseIndex]}',
              style: provider.isDark()
                  ? Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: ColorApp.kBlackColor)
                  : Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
