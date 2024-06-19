import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/commons/custom_appbar.dart';
import 'package:foodly/commons/custom_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/home/widgets/category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(130.h), child: customAppBar()),
        body: SafeArea(
            child: CustomContainer(
          containerContent: const Column(
            children: [CategoryList()],
          ),
        )));
  }
}
