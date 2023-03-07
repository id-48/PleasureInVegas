


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/widgets/custom_appbar.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';
import 'package:pleasure_in_vegas/widgets/custom_card.dart';

class CartScreen extends HookConsumerWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context ,WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar (
        title : "Cart List",
        isBack: true,
        isCart: false,


      ),


      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,

              itemBuilder: (BuildContext context, int index) {
              return CustomCard(
                radius: 10,
                padding: 0,
                margin: const EdgeInsets.only(bottom: 10),

                child: Row(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2018/02/24/17/17/window-3178666_960_720.jpg",
                            height: 130,
                            width: 130,
                            fit: BoxFit.fill,
                          ),
                        ),


                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,
                      vertical: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Suit , 1 Bedroom (LA)",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: MerriWeather),
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                "Total Price : \$ 250.67",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: MerriWeather),
                              ),
                              const SizedBox(height: 20,),


                              Padding(
                                padding: const EdgeInsets.only(left: 120),
                                child: CustomButton(title: "Delete",
                                fontSize: 12.sp,


                                  radius: 8,
                                paddingHorizontal: 10,
                                onPressed: (){},),
                              )



                            ],
                          ),

                        ],
                      ),
                    )


                  ],
                ),
              );
            },)

          ],
        ),
      ),

    );
  }
}
