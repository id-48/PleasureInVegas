


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/di/locator.dart';

import 'package:pleasure_in_vegas/screen/home/componet/hotel_info_sheet.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/widgets/custom_appbar.dart';
import 'package:pleasure_in_vegas/widgets/custom_bottom_sheet.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';
import 'package:pleasure_in_vegas/widgets/custom_card.dart';

class HotelDetailScreen extends HookConsumerWidget {
  const HotelDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context ,WidgetRef ref ) {
    return Scaffold(


      appBar:  CustomAppBar (
        title: "Hotel Detail",
        isBack: true,
        isCart: true,
        trailingonTap:  (){
          navigationService.push(routeCartScreen);
        },

      ),



      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16 ,vertical: 10),
              child: Column(
                children: [
                  CustomCard(
                    radius: 10,
                    padding: 0,
                    // height: 250,

                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
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
                                  SizedBox(height: 5,),
                                  Text(
                                    "★ ★ ★ ★ (4)",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: greyColor,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: MerriWeather),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_sharp ,color: redFroly,size: 16,),
                                      SizedBox(width: 5,),
                                      Text(
                                        "1 Vegas Street",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: greyColor,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: MerriWeather),
                                      ),
                                    ],
                                  ),


                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),


                ],
              ),
            ),
            Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  // padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 20),

                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {

                    return Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(color: primaryColor,),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(
                              "Suit, 1 Bedroom (River)",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: MerriWeather,
                                  color: black,
                                  fontWeight: FontWeight.bold,

                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(height:  20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(


                                    onTap:  (){
                                      customBottomSheet(context,child:  HotelInfoSheet() );
                                    },
                                        child: Icon(Icons.visibility_off ,color: primaryColor,)),


                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    CustomButton(
                                        title: "Add to cart",
                                      radius: 8,
                                      paddingHorizontal: 10,
                                      fontSize: 12.sp,
                                      color: primaryColor,
                                    ),
                                    SizedBox(width: 10,),
                                    CustomButton(
                                      title: "Book Now",
                                      onPressed: (){
                                        navigationService.push(routeHotelBookingScreen);
                                      },
                                      radius: 8,
                                      paddingHorizontal: 10,
                                      fontSize: 12.sp,
                                      color: primaryColor,
                                    ),





                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],


                      ),
                    );
                  },),
              ],
            ),
          ],
        ),
      ),


    );
  }
}
