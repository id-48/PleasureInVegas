
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/di/locator.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';

class RegistrationScreen extends HookConsumerWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mobileNumberController = useTextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 47.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 37.w),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            navigationService.pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: const Color(0xFF373636),
                            size: 25.h,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Image.asset(registration),
                SizedBox(
                  height: 38.h,
                ),
                Text(
                  "Registration",
                  style: TextStyle(
                      color: letsGetStartedTextColor,
                      fontSize: 25.sp,
                      fontFamily: MerriWeather,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Column(
                  children: [
                    Text("Enter your mobile number, we will send you",
                        style: TextStyle(
                            color: const Color(0xFFA6AAB6),
                            fontSize: 16.sp,
                            fontFamily: MerriWeather,
                            fontWeight: FontWeight.normal)),
                    Text("OTP to verify later",
                        style: TextStyle(
                            color: const Color(0xFFA6AAB6),
                            fontSize: 16.sp,
                            fontFamily: MerriWeather,
                            fontWeight: FontWeight.normal)),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 50.h,
                  width: 278.w,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: const Color(0xFFD1D1D1)),
                      borderRadius: BorderRadius.circular(6.r)),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      children: [
                        Image.asset(india),
                        SizedBox(
                          width: 8.w,
                        ),
                        Expanded(

                          child: TextFormField(
                            style: TextStyle(fontSize: 15.sp,color: const Color(0xFF373636),fontFamily: MerriWeather,fontWeight: FontWeight.normal),
                            controller: mobileNumberController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.black,
                              hintText: "(+ 91) 1234567890",),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Image.asset(confirm),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomButton(
                  height: 50.h,
                  width: 278.w,
                  onPressed: (){
                   // navigationService.push(routeVerificationScreen);
                  },
                  textColor: white,
                  color: buttonBlueColor,
                  title: "Continue",
                ),
                SizedBox(
                  height: 250.h,
                ),
                Text("Skip and continue",style: TextStyle(color: buttonBlueColor,fontSize: 14.sp,fontFamily: MerriWeather,fontWeight: FontWeight.normal)),
                SizedBox(
                  height: 32.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
