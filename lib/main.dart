import 'package:aula04/data/notifiers.dart';
import 'package:aula04/views/widget_tree.dart';
import 'package:aula04/views/widgets/brightness_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

String? title = 'Flutter appbar';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: MyHomePage()
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
