import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 2,
        ),
        Image.asset('assets/images/radio_icon.png'),
        Text(
          'أذاعة القران الكريم',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/Icon metro-next.png'),
            Image.asset('assets/images/Icon awesome-play.png'),
            Image.asset('assets/images/Icon metro-next-1.png'),
          ],
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
