import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/data/model/auth/sign_in/req_sign_in.dart';
import 'package:pleasure_in_vegas/di/locator.dart';
import 'package:pleasure_in_vegas/screen/auth/auth_view_model.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/constants/validation.dart';
import 'package:pleasure_in_vegas/utils/dialog_utils.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';
import 'package:pleasure_in_vegas/widgets/custom_textfield.dart';

class SignIn extends HookConsumerWidget {
    SignIn({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final emailController = useTextEditingController();
    final passController = useTextEditingController();



    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          height: Utils.getHeight(context),
          width: Utils.getWidth(context),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1609174034566-3248c76e41f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
                  scale: 4,
                  fit: BoxFit.fill)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            color: Colors.black54,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 60.h,
                  ),

                   CircleAvatar(
                    backgroundColor: white,
                    radius: 64,
                    child: Image.asset(icLogo,scale: 7,),
                  ),

                  SizedBox(
                    height: 18.h,
                  ),

                  CustomTextfeild(
                    height: 46,
                    textStyle: TextStyle(
                        fontFamily: MerriWeather,
                        color: white,
                        fontSize: 14.sp),
                    prefix: Image.asset(emailIcon, scale: 4, color: white),
                    contentPadding: const EdgeInsets.only(left: 15, top: 10),
                    width: double.infinity,
                    containerborder: Border.all(color: primaryColor),
                    controller: emailController,
                    textCapitalization: TextCapitalization.none,
                    containercolor: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    maxLines: 1,
                    hinttext: "Email Id",
                    validator: (val) =>
                        Validation.emailValidation(val.toString()),
                    hintStyle: TextStyle(
                        fontFamily: MerriWeather,
                        color: white,
                        fontSize: 14.sp),
                  ),

                  SizedBox(
                    height: 14.h,
                  ),

                  CustomTextfeild(
                    height: 46,
                    textStyle: TextStyle(
                        fontFamily: MerriWeather,
                        color: white,
                        fontSize: 14.sp),
                    prefix: Image.asset(
                      lockIcon,
                      scale: 25,
                      color: white,
                    ),
                    contentPadding: const EdgeInsets.only(left: 15, top: 10),
                    width: double.infinity,
                    containerborder: Border.all(color: primaryColor),
                    controller: passController,
                    textCapitalization: TextCapitalization.none,
                    containercolor: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    maxLines: 1,
                    hinttext: "Password",
                    hintStyle: TextStyle(
                        fontFamily: MerriWeather,
                        color: white,
                        fontSize: 14.sp),
                  ),

                  SizedBox(
                    height: 14.h,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Utils.regularBodyText(
                          text: "Forget Password ?", textColor: white),

                      const Spacer(),

                      // SizedBox(width: 10.w,),
                    ],
                  ),

                  SizedBox(
                    height: 60.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: white,
                        child: Image.asset(
                          facebookIcon,
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: white,
                        child: Image.asset(
                          googleIcon,
                          scale: 3,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 50.h,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Utils.regularBodyText(
                          text: "Privacy Policy", textColor: white),
                    ],
                  ),

                  SizedBox(
                    height: 50.h,
                  ),

                  // Center(
                  //   child: InkWell(
                  //     onTap: (){
                  //       // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));
                  //       navigationService.pushAndRemoveUntil(routeDashBoard);
                  //     },
                  //     child: Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 100),
                  //       child: Container(
                  //         // width: 120.w,
                  //         padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                  //         decoration: BoxDecoration(
                  //           color: white,
                  //           // color: Color(0xffEED249),
                  //           borderRadius: BorderRadius.circular(8),
                  //
                  //         ),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //
                  //             const Icon(Icons.login_outlined,size: 25,color: primaryColor,),
                  //
                  //
                  //
                  //             Text("Login", textAlign: TextAlign.center,
                  //               style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5,color: primaryColor,fontFamily: MerriWeather,fontSize: 16.sp),),
                  //
                  //             SizedBox(width: 1.w,),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                          title: "Login",
                          paddingHorizontal: 25,
                          textColor: white,
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                            if (emailController.text.isEmpty) {
                              displayToast("Pleas Enter Email");
                            } else if (passController.text.isEmpty) {
                              displayToast("Pleas Enter Password");
                            }


                              else {
                              print("emaial cococ--- >$emailController");
                              print("emaial cococ--- >$passController");

                              ReqSignIn signInData = ReqSignIn(
                                  email: emailController.text,
                                  password: passController.text,
                                  playerId: "User");
                              await ref
                                  .read(authProvider.notifier)
                                  .signIn(context: context, data: signInData);
                            }
                            }
                          },
                          radius: 8,
                          color: primaryColor),
                    ],
                  ),

                  SizedBox(
                    height: 50.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                          title: "Sign Up",
                          textColor: white,
                          onPressed: () {
                            navigationService
                                .pushAndRemoveUntil(routeSignUpScreen);
                          },
                          radius: 8,
                          color: primaryColor),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
