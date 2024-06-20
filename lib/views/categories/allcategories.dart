import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/background_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: kOffWhite,
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        title: Text("All Category"),
      ),
      body: BackgroundContainer(
        color: kOffWhite,
        child: Container(
          height: height,
          child: ListView(
            children: List.generate(categories.length, (index) {
              var category = categories[index];
              return ListTile(
                leading: CircleAvatar(
                  radius: 18.r,
                  backgroundImage: NetworkImage(category['imageUrl']),
                ),
                title: Text(category['title']),
                trailing:
                    Icon(Icons.arrow_forward_ios, color: kGray, size: 15.r),
              );
            }),
          ),
        ),
      ),
    );
  }
}
