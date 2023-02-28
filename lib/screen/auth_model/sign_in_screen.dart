import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/screen/home_page/dashboard_screen.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_textfield.dart';

class SignIn extends HookConsumerWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final emailController = useTextEditingController();
    final passController = useTextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Utils.getHeight(context),
          width: Utils.getWidth(context),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://mobimg.b-cdn.net/v3/fetch/7d/7dbb6a6032f98449a78d1069bbf5085d.jpeg?w=300"),scale: 4,fit: BoxFit.fill
              )
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
          color: Colors.black38,
            child: Column(
              children: [

                SizedBox(height: 60.h,),

                 const CircleAvatar(
                  backgroundColor: white,
                  radius: 64,
                  // child: Image.asset(emailIcon,scale: 4,),
                 ),

                SizedBox(height: 18.h,),

                CustomTextfeild(
                  height: 46,
                  textStyle: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14.sp),
                  prefix: Image.asset(emailIcon,scale: 4,color: white),
                  contentPadding: const EdgeInsets.only(left: 15,top: 10),
                  width: double.infinity,
                  containerborder: Border.all(color: appAmber),
                  controller: emailController,
                  textCapitalization: TextCapitalization.none,
                  containercolor: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  maxLines: 1,
                  hinttext: "Email Id",
                  hintStyle: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14.sp),
                ),

                SizedBox(height: 14.h,),

                CustomTextfeild(
                  height: 46,
                  textStyle: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14.sp),
                  prefix: Image.asset(lockIcon,scale: 25,color: white,),
                  contentPadding: const EdgeInsets.only(left: 15,top: 10),
                  width: double.infinity,
                  containerborder: Border.all(color: appAmber),
                  controller: passController,
                  textCapitalization: TextCapitalization.none,
                  containercolor: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  maxLines: 1,
                  hinttext: "Password",
                  hintStyle: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14.sp),
                ),

                SizedBox(height: 14.h,),


                Row(

                  children: [

                    SizedBox(width: 10.w,),

                    Text("Forget Password ?", textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5,color: white,fontFamily: MerriWeather,fontSize: 14.sp),),

                    const Spacer(),


                    // SizedBox(width: 10.w,),

                  ],
                ),

                SizedBox(height: 60.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    CircleAvatar(
                      radius: 20,
                      backgroundColor: white,
                      child: Image.asset(facebookIcon,scale: 3,),
                    ),

                    SizedBox(width: 20.w,),

                    CircleAvatar(
                      radius: 20,
                      backgroundColor: white,
                      child: Image.asset(googleIcon,scale: 3,),
                    ),


                  ],
                ),


                SizedBox(height: 50.h,),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(width: 10.w,),

                    Text("Privacy Policy", textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5,color: white,fontFamily: MerriWeather,fontSize: 14.sp),),



                  ],
                ),

                SizedBox(height: 50.h,),

                 Center(
                   child: InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));
                     },
                     child: Container(
                       width: 120.w,
                       padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                       decoration: BoxDecoration(
                         color: white,
                         // color: Color(0xffEED249),
                         borderRadius: BorderRadius.circular(8),

                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [

                           const Icon(Icons.login_outlined,size: 25,color: appAmber,),



                           Text("Login", textAlign: TextAlign.center,
                             style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5,color: appAmber,fontFamily: MerriWeather,fontSize: 16.sp),),

                           SizedBox(width: 1.w,),
                         ],
                       ),
                     ),
                   ),
                 ),

                SizedBox(height: 50.h,),

                Align(
                  alignment: Alignment.center,
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(color: white),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding:  const EdgeInsets.all(5),
                    child: Text("Sign Up",
                      style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5,color: appAmber,fontFamily: MerriWeather,fontSize: 18.sp),),
                  ),
                ),

                // SizedBox(height: 40.h,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
