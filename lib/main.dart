import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/app_theme/app_theme.dart';
import 'package:flutter_portfolio/view/splash/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  final ValueNotifier<ThemeMode> notifier = ValueNotifier(ThemeMode.dark);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: notifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          darkTheme: darkTheme(context),
          themeMode: value,
          theme: value == ThemeMode.dark ? darkTheme(context) : lightTheme(context),
          home: const SplashView(),
        );
      },
    );
  }
}
