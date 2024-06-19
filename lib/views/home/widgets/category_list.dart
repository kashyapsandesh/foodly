import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/controllers/categoryindexController.dart';
import 'package:foodly/views/categories/allcategories.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: Obx(() {
        return ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(categories.length, (i) {
            var category = categories[i];
            bool isSelected = controller.catListIndex == category['_id'];
            return GestureDetector(
              onTap: () {
                if (isSelected) {
                  controller.updateCategory = '';
                  controller.updateTitle = '';
                } else if (category['title'] == 'More') {
                  Get.to(() => const AllCategories(),
                      transition: Transition.fadeIn,
                      duration: const Duration(milliseconds: 900));
                } else {
                  controller.updateCategory = category['_id'];
                  controller.updateTitle = category['title'];
                }
              },
              child: Container(
                margin: EdgeInsets.only(right: 5.w),
                padding: EdgeInsets.only(top: 4.h),
                width: 0.19.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: isSelected ? kSecondary : kOffWhite,
                    width: .5.w,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 35.h,
                      child: Image.network(
                        category['imageUrl'],
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      category['title'],
                      // style: appstyle(13, kDark, FontWeight.normal),
                    )
                  ],
                ),
              ),
            );
          }),
        );
      }),
    );
  }
}
