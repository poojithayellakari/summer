import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../homepage.dart';
import '../profilepage.dart';

class NavigationController extends GetxController {
  int selectedIndex = 0;
  List<Widget> pages = [HomeScreen(), ProfileScreen()];
}
