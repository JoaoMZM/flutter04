import 'package:aula04/data/notifiers.dart';
import 'package:flutter/material.dart';

class BrightnessWidget extends StatefulWidget {
  const BrightnessWidget({super.key});

  @override
  State<BrightnessWidget> createState() => _BrightnessWidgetState();
}

class _BrightnessWidgetState extends State<BrightnessWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: darkModeNotifer,
      builder: (context, isDark, child) {
        return Theme(
          data: ThemeData(brightness: isDark ? Brightness.dark : Brightness.light),
          child: SizedBox(
            width: 0,
            height: 0,
          ),
        );
      },
    );
  }
}
