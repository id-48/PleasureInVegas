import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pleasure_in_vegas/di/locator.dart';
import 'package:pleasure_in_vegas/screen/home_page/dashboard_screen.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';


class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(
          () {
        final timer = Timer(const Duration(seconds: 2), () async {
          // if (getString(userId) == '') {

           navigationService.pushAndRemoveUntil(routeIntroScreen);

           // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard() ));

          // } else {
          //   navigationService.pushReplacement(routeHome);
          // }
        });
        return timer.cancel;
      },
      [],
    );

    return Scaffold(
      // backgroundColor: splashBgColor,
      body: Container(
        height: Utils.getHeight(context),
          width: Utils.getWidth(context),
          // decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(splashBG),scale: 4,fit: BoxFit.fill
          //     )
          //   // color: white,
          //   // borderRadius: BorderRadius.circular(300.r)
          // ),
        child: Center(
          child: Image.asset(foodIcon,scale: 0.5,),
        ),
      ),
    );
  }
}
