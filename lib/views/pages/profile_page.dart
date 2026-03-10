import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder()),
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Text(controller.text),
          Checkbox.adaptive(
            tristate: true,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          CheckboxListTile.adaptive(
            tristate: true,
            title: Text('CheckBox'),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          Switch.adaptive(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          SwitchListTile.adaptive(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
            title: Text('Switch'),
          ),
          Slider.adaptive(
            max: 100,
            divisions: 100,
            value: sliderValue,
            onChanged: (double value) {
              setState(() {
                sliderValue = value;
              });
              print(value);
            },
          ),
          InkWell(
            splashColor: Colors.teal,
            onTap: () {
              print('Image selected');
              setState(() {
                sliderValue = 50;
              });
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.white12,
            ),
          ), //InkWell = GestureDetector porém com efeitos de animação
          ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
              print(count);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
            ),
            child: Text('$count'),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Botão sem estilo')),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: Text('Botão Preenchido'),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: Text('Botão de texto'),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: Text('Botão com contorno'),
          ),
        ],
      ),
    );
  }
}
