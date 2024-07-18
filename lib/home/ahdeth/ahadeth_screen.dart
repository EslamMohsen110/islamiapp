import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../color/color_app.dart';
import '../../providers/app_config_provider.dart';
import 'ahadeth_tab.dart';
import 'item_ahadeth_screen.dart';

class AhadethScreen extends StatelessWidget {
  static const String routeName = 'AhadethScreen';

  const AhadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var aragesHadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
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
            aragesHadeth.title,
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
            itemCount: aragesHadeth.content.length,
            itemBuilder: (context, index) {
              return ItemAhadethScreen(content: aragesHadeth.content[index]);
            },
          ),
        ),
      )
    ]);
  }
}
