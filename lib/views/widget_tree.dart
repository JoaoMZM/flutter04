import 'package:aula04/data/notifiers.dart';
import 'package:aula04/views/pages/home_page.dart';
import 'package:aula04/views/pages/profile_page.dart';
import 'package:aula04/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter mapp')),
      body: ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
        return pages.elementAt(selectedPage);
      },),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}