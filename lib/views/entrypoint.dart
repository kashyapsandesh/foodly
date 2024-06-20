// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/controllers/tabIndexController.dart';
import 'package:foodly/views/cart/cart_page.dart';
import 'package:foodly/views/home/home_page.dart';
import 'package:foodly/views/profile/profile_page.dart';
import 'package:foodly/views/search/search_page.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabindexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pages[controller.tableIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context).copyWith(canvasColor: kPrimary),
                    child: BottomNavigationBar(
                        onTap: (value) {
                          controller.setTabIndex = value;
                        },
                        currentIndex: controller.tableIndex,
                        // showSelectedLabels: false,
                        // showUnselectedLabels: false,
                        selectedIconTheme:
                            const IconThemeData(color: kSecondary),
                        unselectedIconTheme:
                            const IconThemeData(color: Colors.black38),
                        items: [
                          BottomNavigationBarItem(
                              icon: controller.tableIndex == 0
                                  ? const Icon(AntDesign.appstore1)
                                  : const Icon(AntDesign.appstore_o),
                              label: "Home"),
                          BottomNavigationBarItem(
                              icon: controller.tableIndex == 1
                                  ? const Icon(AntDesign.search1)
                                  : const Icon(AntDesign.search1),
                              label: "Search"),
                          BottomNavigationBarItem(
                              icon: controller.tableIndex == 2
                                  ? const Badge(
                                      label: Text("1"),
                                      child: Icon(FontAwesome.opencart))
                                  : const Icon(FontAwesome.opencart),
                              label: "Cart"),
                          BottomNavigationBarItem(
                              icon: controller.tableIndex == 3
                                  ? const Icon(FontAwesome.user_circle)
                                  : const Icon(FontAwesome.user_circle_o),
                              label: "Profile"),
                        ])),
              )
            ],
          ),
        ));
  }
}
