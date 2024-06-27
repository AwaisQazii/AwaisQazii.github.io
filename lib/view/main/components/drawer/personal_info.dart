import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const AreaInfoText(title: 'Contact', text: '03440215486'),
        const AreaInfoText(title: 'Email', text: 'awaisqazi6391@gmail.com'),
        const AreaInfoText(title: 'LinkedIn', text: '@awais-qazi-76469723a'),
        const AreaInfoText(title: 'Github', text: '@AwaisQazii'),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
