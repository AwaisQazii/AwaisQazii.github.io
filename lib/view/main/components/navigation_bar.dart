import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';

import '../../../main.dart';
import '../../../res/constants.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatefulWidget {
  const TopNavigationBar({super.key});

  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: !Responsive.isLargeMobile(context)
                ? Image.asset(
                    'assets/images/triange_icon.png',
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  )
                : MenuButton(
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(
            flex: 2,
          ),
          const ConnectButton(),
          const Spacer(),
          buildSwitch(),
          const Spacer(),
        ],
      ),
    );
  }

  Switch buildSwitch() {
    final myApp = MyApp.of(context);
    return Switch(
      value: myApp.notifier.value == ThemeMode.dark,
      onChanged: (value) {
        setState(() {
          myApp.notifier.value =
              myApp.notifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
        });
      },
    );
  }
}
