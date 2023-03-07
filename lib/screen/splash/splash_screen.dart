import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pleasure_in_vegas/di/locator.dart';

import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/constants/preference_key_constant.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/preference_utils.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';


class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(
          () {
        final timer = Timer(const Duration(seconds: 2), () async {

           if (getBool(prefUserLogIn) == true) {

           navigationService.pushAndRemoveUntil(routeDashBoard
           );




           } else {
             navigationService.pushReplacement(routeIntroScreen);
           }
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
          child: Image.asset(icLogo ,scale: 3,),
        ),
      ),
    );
  }
}
