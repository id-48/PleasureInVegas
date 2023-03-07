import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_'
    'screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/di/locator.dart';

import 'package:pleasure_in_vegas/screen/splash/intro/intro_modal.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';


class IntroScreen extends HookConsumerWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    final currentIndex = useState<int>(0);
    // Timer _timer;

    Container buildDot(int index, BuildContext context) {
      return Container(
        height: 8,
        width: currentIndex.value == index ? 8 : 8,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentIndex.value == index
              ? primaryColor
              : greyColor,
        ),
      );
    }

    final controller = useState<PageController>(PageController());

    // PageController? _controller;

    useEffect(() {
      // _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
        // if (currentIndex.value < 4) {
        //   currentIndex.value++;
        // } else {
        //   currentIndex.value = 0;
        // }

        // _controller?.animateToPage(
        //   currentIndex.value,
        //   duration: Duration(milliseconds: 100),
        //   curve: Curves.easeIn,
        // );
        // _controller.value = PageController();
        FocusManager.instance.primaryFocus?.unfocus();
      // });
      // _timer.cancel();

      return null;
    },[]);


    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1609174034566-3248c76e41f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),scale: 4,fit: BoxFit.fill
            )
        ),
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 28.h),
          color: Colors.black54,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Expanded(
                flex: 8,
              child: Center (
                child: SizedBox(
                  height: 320.h,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: controller.value,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      currentIndex.value = index;
                    },
                    itemBuilder: (_, index) {
                      return Container(
                          // height: 320.h,
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          width: 304.w ,
                          decoration:  const BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              // color: white,
                              // boxShadow: const [
                              //   BoxShadow(
                              //       color: Colors.black38,
                              //       blurRadius: 2.0,
                              //       offset: Offset(-0.5,-0.5)
                              //   ),
                              // ]

                          ),
                          child: Column(
                            children: [

                              SizedBox(height: 41.h,),

                              Text(contents[index].boldname!, textAlign: TextAlign.center,
                                style:
                                GoogleFonts.bonaNova(fontWeight: FontWeight.w600,fontSize: 22.sp,letterSpacing: 0.5,color: white),),

                              SizedBox(height: 20.h,),

                              Text(contents[index].discription!,
                                style:  TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,letterSpacing: 0.3,color: white),textAlign: TextAlign.center,),

                              SizedBox(height: 40.h,),

                              Image.asset(icLogo, scale: 5),

                            ],
                          )

                      );
                    },
                  ),
                ),
              )
              ),


             Expanded(
               flex: 3,
               child: Container(
                 decoration: BoxDecoration(
                   color: white,
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(110.r),
                     topRight: Radius.circular(30.r),
                   )

                 ),
                 child: Column(
                   // crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [

                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: List.generate(
                         contents.length,
                             (index) => buildDot(index, context),
                       ),
                     ),

                     SizedBox(height: 60.h,),

                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20),
                       child: Row(
                         children: [

                           currentIndex.value == 3
                               ? const Spacer()
                               : Expanded(
                                 child: CustomButton(
                             title: 'SKIP',
                             color: white,
                             // height: 40.h,
                             // width: 100.w,
                             border: Border.all(color: primaryColor),
                             textColor: black,
                                   radius: 8,
                             onPressed: (){
                                 controller.value.jumpToPage(3);

                             },
                           ),
                               ),
                           const Spacer(),
                           Expanded(
                             child: CustomButton(
                               title: currentIndex.value == 3 ? "Got It" : 'NEXT',
                               // height: 40.h,
                               // width: 100.w,
                               // border: Border.all(color: appAmber),
                               color: primaryColor,
                               textColor: white,
                               radius: 8,

                               onPressed: (){
                                 if(currentIndex.value < 3) {
                                   controller.value.jumpToPage(currentIndex.value + 1);
                                 }else {
                                   selectedType(context,ref);

                                   // Navigator.push(context, MaterialPageRoute(builder: (context)  => SplashScreen()));
                                   // navigationService.push(routeWelCome);
                                 }
                               },
                             ),
                           ),

                         ],
                       ),
                     ),

                     SizedBox(height: 50.h,),
                   ],
                 ),
               ),
             ),

            ],
          ),
        ),
      ),


    );
  }

  selectedType( context ,ref) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
          content: SizedBox(
            height: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                InkWell(
                  onTap: (){
                    navigationService.pop();
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: black)
                  ),
                          child: const Center(child: Icon(Icons.close,color: primaryColor,size: 30,)
                          )
                  )
                ),



                const Spacer(),

                CustomButton(
                  title: 'PLEASE SELECT USER',

                  // height: 40.h,
                  // width: double.infinity,
                  // border: Border.all(color: appAmber),
                  textColor: white,
                  color: primaryColor,
                  radius: 5,
                  onPressed: (){
                    navigationService.push(routeSignIn);

                  },
                ),

                SizedBox(height: 14.h,),


                CustomButton(
                  title: 'PLEASE SELECT AGENT',
                  // height: 40.h,
                  // width: double.infinity,

                 color: primaryColor,
                  textColor: white,
                  radius: 5,
                  onPressed: (){
                    navigationService.push(routeSignIn);
                  },
                ),

              ],
            ),
          )),
    );
  }

}








