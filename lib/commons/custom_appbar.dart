import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';

Widget customAppBar() {
  String getTimeofDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    if (hour >= 0 && hour < 12) {
      return '☀️';
    } else if (hour >= 12 && hour < 16) {
      return '🌙';
    } else {
      return '😴';
    }
  }

  return Container(
    height: 110.h,
    width: width,
    color: kOffWhite,
    child: Container(
      margin: EdgeInsets.only(top: 20.h),
      //parent row
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //avatar and current location row
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: kSecondary,
                backgroundImage: const NetworkImage(
                    "https://sb.kaleidousercontent.com/67418/1920x1281/0e9f02a048/christian-buehner-ditylc26zvi-unsplash.jpg"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deliver to",
                      style: appstyle(13, kSecondary, FontWeight.w600),
                    ),
                    SizedBox(
                      width: width * 0.65,
                      child: Text(
                        "+5770 Lekhnath, Pokhara",
                        overflow: TextOverflow.ellipsis,
                        style: appstyle(13, kGrayLight, FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.06,
                width: width * 0.15,
                // color: Colors.red,
                child: Text(
                  getTimeofDay(),
                  style: const TextStyle(fontSize: 35),
                ),
              ),
            ],
          ),
        ],
      ),
      // day sizebox
    ),
  );
  //functionallity to check time
}

TextStyle appstyle(double fontsize, color, fontWeight) {
  return TextStyle(fontSize: fontsize, color: color, fontWeight: fontWeight);
}
