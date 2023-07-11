import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:ottmate/homepage.dart';
import 'package:ottmate/profilepage.dart';

import '../controllers/navigation.controller.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({super.key});

  NavigationController navigationController =
      Get.put(NavigationController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(builder: (_) {
      return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              onTap: (tappedIndex) {
                navigationController.selectedIndex = tappedIndex;
                navigationController.update();
              },
              currentIndex: navigationController.selectedIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: "Profile")
              ]),
          body: navigationController.pages[_.selectedIndex]);
    });
  }
}
