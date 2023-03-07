import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_appbar.dart';

import 'package:pleasure_in_vegas/widgets/custom_card.dart';
import 'package:pleasure_in_vegas/widgets/custom_textfield.dart';

class HotelSearchSheet extends HookConsumerWidget {
  const HotelSearchSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();

    return Scaffold(
      appBar: CustomAppBar (

        isBack: true,
        isCart: false,


      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120.h,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child:
                                Image.asset(crownIcon, scale: 20, color: primaryColor)),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          flex: 10,
                          child: CustomTextfeild(
                            height: 46.h,

                            textStyle:  TextStyle(
                                fontFamily: MerriWeather, color: black, fontSize: 14.sp),

                            contentPadding: const EdgeInsets.only(
                              left: 20,
                            ),
                            width: double.infinity,
                            // containerborder: Border.all(color: appAmber),
                            controller: searchController,
                            isBoxShadow: true,
                            textCapitalization: TextCapitalization.none,
                            containercolor: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(25),
                            maxLines: 1,
                            hinttext: "Search Hotels",
                            hintStyle:  TextStyle(
                                fontFamily: MerriWeather, color: black, fontSize: 14.sp),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(
                      color: primaryColor,
                      thickness: 2,
                    ),
                  ],
                ),
              ),


              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child:CustomCard(
                          radius: 8,
                            color: primaryColor,







                            child:         Utils.regularSubHeadingText(text:  "Destination" ,textColor: white)



        ),
                      ),
                    ],
                  ),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 20),

                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {

                      return Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Utils.regularBodyText(text:  "Kiev"),
                            SizedBox(height:  20.h,),
                            Divider(color: primaryColor,)
                          ],


                        ),
                      );
                    },),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomCard(

                            radius: 8,
                            color: primaryColor,
                            child:    Utils.regularSubHeadingText(text:  "Hotels" ,textColor: white)
                        ),
                      ),
                    ],
                  ),

                  ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 20),
                    physics: NeverScrollableScrollPhysics(),


                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {

                      return Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Utils.regularBodyText(text:  "The Berkley, Las Vegas"),

                            SizedBox(height:  20.h,),
                            Divider(color: primaryColor,)
                          ],


                        ),
                      );
                    },)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
