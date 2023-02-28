
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/di/locator.dart';
import 'package:pleasure_in_vegas/provider/app_state_provider.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/constants/app_constant.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/extensions/size_extension.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:provider/provider.dart' as consumer;

class CustomMobileDrawer extends HookConsumerWidget {
  const CustomMobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {



    commonDrawerItems({required String logo,required String title,required void Function() onTap}){
      return GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              logo,
            ),
            SizedBox(
              width: 16.w,
            ),
            Text(title,style: TextStyle(color: Color(0xFF373636),fontWeight: FontWeight.normal,fontFamily: MerriWeather,fontSize: 18.sp),),
          ],
        ),
      );
    }



    return consumer.Consumer<AppStateProvider>(
      builder: (context, valueProvider, child) {
        return Container(
          width: !valueProvider.isWebDrawerOpen && context.isDesktop
              ? context.dynamicSize(
            Utils.getWidth(context) * 0.19,
            Utils.getWidth(context) * 0.17,
            Utils.getWidth(context) * webCloseDrawerSize,
            Utils.getWidth(context) * webCloseDrawerSize,
          )
              : context.dynamicSize(
            366.w,
            366.w,
            Utils.getWidth(context) * 0.42,
            Utils.getWidth(context) * webOpenDrawerSize,
          ),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(29))
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Drawer(
              elevation: 0,
              backgroundColor: white,
              child:
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 19.w),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                     Center(
                       child: CircleAvatar(
                          backgroundColor: Colors.grey,
                         maxRadius: 50,
                       ),
                     ),
                    SizedBox(
                      height: 19.h,
                    ),

                    Center(
                      child:Text("User Name",style: TextStyle(color: Color(0xFF373636),fontWeight: FontWeight.bold,fontFamily: MerriWeather,fontSize: 20.sp),),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    commonDrawerItems(logo: dashboardLogo,title: "Dashboard",onTap: (){
                      navigationService.push(routeHomeScreen);
                    }),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: marginCalcLogo,title: "Margin Calc",onTap: (){}),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: fillDataLogo,title: "Fill Data",onTap: (){}),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: exchangeLogo,title: "Exchange",onTap: (){
                      navigationService.push(routeExchangeScreen);
                    }),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: newsLogo,title: "News",onTap: (){
                      navigationService.push(routeNewsScreen);
                    }),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: hintsLogo,title: "Hints",onTap: (){}),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: reportLogo,title: "Report",onTap: (){}),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: videosLogo,title: "Videos",onTap: (){}),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: notificationSettingLogo,title: "Notification Settings",onTap: (){}),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: alertLogo,title: "Alert",onTap: (){}),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: screenersLogo,title: "Screeners",onTap: (){}),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: corporatActionLogo,title: "Corporate Action",onTap: (){}),
                    SizedBox(
                      height: 22.h,
                    ),
                    commonDrawerItems(logo: logoutLogo,title: "Log out",onTap: (){}),
                    SizedBox(
                      height: 90.h,
                    ),
                    Center(child: Text("Version : 1.0.0",style: TextStyle(color: black,fontSize: 16.sp,fontFamily: MerriWeather,fontWeight: FontWeight.w500),),),
                    SizedBox(
                      height: 28.h,
                    ),
                  ],
                ),
              ) ,
            ),
          ),
        );
      },
    );
  }
}
