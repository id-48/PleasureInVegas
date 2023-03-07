import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_appbar.dart';
import 'package:pleasure_in_vegas/widgets/custom_textfield.dart';

class HotelInfoSheet extends HookConsumerWidget {
  const HotelInfoSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar (

        isBack: true,
        isCart: false,


      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Utils.regularSubHeadingText(text:  "Nightly Rates :" ,),

            Divider(color:  primaryColor,),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Utils.regularSubHeadingText(text:  "28-Feb-2023" ,textSize: 16.sp),

                  SizedBox(
                    height: 5.h,
                  ),
                  Utils.regularSubHeadingText(text:   "\$ 229" ,textSize: 14.sp ,textColor:  primaryColor),

                ],
              ),
            ),

            SizedBox(height: 20.h,),
            Utils.regularSubHeadingText(text:  "Fees (RESORT AND MISCELLANEOUS):" ,),

            Divider(color:  primaryColor,),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child:       Utils.regularSubHeadingText(text:   "\$ 29" ,textSize: 14.sp ,textColor:  primaryColor),
            ),

            SizedBox(height: 20,),
            Text(
              "MODIFICATION AND CANCLE POLICIES",
              style: TextStyle(
                  fontFamily: MerriWeather,
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Divider(color:  primaryColor,),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Each individual hotel has a Local Hold Time for if a customer wants to cancel a hotel reservation.The management of each specific hotel sets its own cancellation policy, though typcially Hilton Hotels enforce a 24-hour cancellation policy.Hilton holds the customer responsible for checking with the specific hotel from which they booked to learn its specific policy for cancelling a hotel reservation.",
                style: TextStyle(
                    fontFamily: MerriWeather,
                    color: black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
