import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/widgets/custom_appbar.dart';
import 'package:pleasure_in_vegas/widgets/custom_textfield.dart';

class HotelBookingScreen extends HookConsumerWidget {
  const HotelBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adultController = useTextEditingController();
    final adultFirstController = useTextEditingController();
    final adultLastController = useTextEditingController();

    final childFirstController = useTextEditingController();
    final childLastController = useTextEditingController();
    final preferenceController = useTextEditingController();
    final commentController = useTextEditingController();

    return Scaffold(
      appBar:  CustomAppBar (
        title: "Hotel Booking - 1/1 ",
        isBack: true,
        isCart: false,


      ),


      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2018/02/24/17/17/window-3178666_960_720.jpg",
                  height: 210,
                  width: 330,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "★ ★ ★ ★ (4)",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: greyColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: MerriWeather),
                  ),
                  const Spacer(),
                  Text(
                    "01 Mar - 02 Mar",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: greyColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: MerriWeather),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Grand Hotel (LA)",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontFamily: MerriWeather),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "01 Mar - 02 Mar",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: MerriWeather),
              ),
              const Divider(
                color: primaryColor,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Suit, 1 Bedroom (Atrium)",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: MerriWeather),
              ),
              const Divider(
                color: primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Adult :",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontFamily: MerriWeather),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextfeild(
                      height: 46,

                      textStyle: const TextStyle(
                          fontFamily: MerriWeather, color: black, fontSize: 14),

                      contentPadding: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: double.infinity,
                      // containerborder: Border.all(color: appAmber),
                      controller: adultController,
                      containerborder: Border.all(color: primaryColor),
                      isBoxShadow: true,
                      textCapitalization: TextCapitalization.none,
                      containercolor: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                      maxLines: 1,

                      hintStyle: const TextStyle(
                          fontFamily: MerriWeather,
                          color: greyColor,
                          fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomTextfeild(
                      height: 46,
                      textStyle: const TextStyle(
                          fontFamily: MerriWeather, color: black, fontSize: 14),
                      contentPadding: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: double.infinity,
                      containerborder: Border.all(color: primaryColor),
                      controller: adultFirstController,
                      isBoxShadow: true,
                      textCapitalization: TextCapitalization.none,
                      containercolor: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                      maxLines: 1,
                      hinttext: "First :",
                      hintStyle: const TextStyle(
                          fontFamily: MerriWeather,
                          color: greyColor,
                          fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomTextfeild(
                      height: 46,
                      textStyle: const TextStyle(
                          fontFamily: MerriWeather, color: black, fontSize: 14),
                      contentPadding: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: double.infinity,
                      containerborder: Border.all(color: primaryColor),
                      controller: adultLastController,
                      isBoxShadow: true,
                      textCapitalization: TextCapitalization.none,
                      containercolor: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                      maxLines: 1,
                      hinttext: "Last :",
                      hintStyle: const TextStyle(
                          fontFamily: MerriWeather,
                          color: greyColor,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Child :",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontFamily: MerriWeather),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextfeild(
                      height: 46,
                      textStyle: const TextStyle(
                          fontFamily: MerriWeather, color: black, fontSize: 14),
                      contentPadding: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: double.infinity,
                      containerborder: Border.all(color: primaryColor),
                      controller: childFirstController,
                      isBoxShadow: true,

                      textCapitalization: TextCapitalization.none,
                      containercolor: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                      maxLines: 1,
                      hinttext: "First :",
                      hintStyle: const TextStyle(
                          fontFamily: MerriWeather,
                          color: greyColor,
                          fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomTextfeild(
                      height: 46,
                      textStyle: const TextStyle(
                          fontFamily: MerriWeather, color: black, fontSize: 14),
                      contentPadding: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: double.infinity,
                      containerborder: Border.all(color: primaryColor),
                      controller: childLastController,
                      isBoxShadow: true,
                      textCapitalization: TextCapitalization.none,
                      containercolor: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                      maxLines: 1,
                      hinttext: "Last :",
                      hintStyle: const TextStyle(
                          fontFamily: MerriWeather,
                          color: greyColor,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Preference :",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontFamily: MerriWeather),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextfeild(
                      height: 46,

                      textStyle: const TextStyle(
                          fontFamily: MerriWeather, color: black, fontSize: 14),

                      contentPadding: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: double.infinity,
                      containerborder: Border.all(color: primaryColor),
                      controller: preferenceController,
                      isBoxShadow: true,
                      textCapitalization: TextCapitalization.none,
                      containercolor: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                      maxLines: 1,
                      // hinttext: "Last :",
                      hintStyle: const TextStyle(
                          fontFamily: MerriWeather,
                          color: greyColor,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Total - \$ 378.18",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontFamily: MerriWeather),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextfeild(
                      height: 96,
                      textStyle: const TextStyle(
                          fontFamily: MerriWeather, color: black, fontSize: 14),
                      contentPadding: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: double.infinity,
                      containerborder: Border.all(color: primaryColor),
                      controller: commentController,
                      isBoxShadow: true,
                      textCapitalization: TextCapitalization.none,
                      containercolor: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                      maxLines: 1,
                      hinttext: "Comment here...",
                      hintStyle: const TextStyle(
                          fontFamily: MerriWeather,
                          color: greyColor,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
