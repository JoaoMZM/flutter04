//ValueNotifier: Armazenam os dados
//ValueListeners: Escutam os dados (não precisa de setState)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> darkModeNotifer = ValueNotifier(false);