import 'package:aula04/data/notifiers.dart';
import 'package:aula04/views/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

String? title = 'Flutter appbar';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: darkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: darkModeNotifier.value
                ? Brightness.dark
                : Brightness.light,
          ),
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WidgetTree();
  }
}
