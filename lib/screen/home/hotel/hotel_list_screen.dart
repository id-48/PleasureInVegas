import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/di/locator.dart';

import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/widgets/custom_appbar.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';
import 'package:pleasure_in_vegas/widgets/custom_card.dart';

class HotelListScreen extends HookConsumerWidget {
  const HotelListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Hotel List",
        isBack: true,
        isCart: true,
        trailingonTap: () {
          navigationService.push(routeCartScreen);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(crownIcon, scale: 20, color: primaryColor),
                 SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: CustomCard(
                    radius: 25,

                    child:  Text(
                      "Kiev",
                      style: TextStyle(
                          fontFamily: MerriWeather, color: black, fontSize: 14.sp),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CustomButton(
                  title: "Search",
                  fontSize: 12.sp,
                  paddingHorizontal: 10,
                  onPressed: () {},
                  radius: 8,
                  color: primaryColor,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomCard(
              radius: 10,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Choose Date",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: MerriWeather),
                        ),
                        const Spacer(),
                        Text(
                          "Number of Rooms",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: MerriWeather),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "01 Mar - 02 Mar",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: MerriWeather),
                        ),
                        const Spacer(),
                        Text(
                          "1 Child -  Adult",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: MerriWeather),
                        ),
                      ],
                    ),
                     SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "1 Hotel found",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: MerriWeather),
                        ),
                        const Spacer(),
                        Text(
                          "Filters",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: MerriWeather),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            navigationService.push(routeFilterScreen);
                            print("object test data");
                            // Navigator.push(context, MaterialPageRoute(builder: (context) {
                            //   return FilterScreen() ;
                            // })

                            // );
                          },
                          child: Icon(
                            Icons.menu_outlined,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(
              height: 20.h,
            ),
            Container(
              color: white,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return HotelDetailScreen() ;
                  // })
                  //
                  //
                  //
                  // );
                  navigationService.push(routeHotelDetailScreen);
                },
                child: CustomCard(
                  radius: 10,
                  padding: 0,
                  // height: 250,

                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2018/02/24/17/17/window-3178666_960_720.jpg",

                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "The Berkley, Las Vegas ",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: MerriWeather),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "★ ★ ★ ★ (4)",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: MerriWeather),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "1 Vegas Street",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: MerriWeather),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
