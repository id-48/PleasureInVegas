import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'package:pleasure_in_vegas/data/model/auth/sign_up/req_sign_up.dart';
import 'package:pleasure_in_vegas/di/locator.dart';
import 'package:pleasure_in_vegas/screen/auth/auth_view_model.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/dialog_utils.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';
import 'package:pleasure_in_vegas/widgets/custom_textfield.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final phoneController = useTextEditingController();
    ImagePicker _picker = ImagePicker();

    XFile? galleryImage;
    final galleryPickedImage = useState<File>(File(""));


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
                      fontFamily: MerriWeather, color: white, fontSize: 14.sp),
                  prefix: const Icon(
                    Icons.person,
                    color: white,
                  ),
                  contentPadding: const EdgeInsets.only(left: 15, top: 10),
                  width: double.infinity,
                  containerborder: Border.all(color: primaryColor),
                  controller: userNameController,
                  textCapitalization: TextCapitalization.none,
                  containercolor: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  maxLines: 1,
                  hinttext: "User Name",
                  hintStyle: TextStyle(
                      fontFamily: MerriWeather, color: white, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 14.h,
                ),
                CustomTextfeild(
                  height: 46,
                  textStyle: TextStyle(
                      fontFamily: MerriWeather, color: white, fontSize: 14.sp),
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
                  hintStyle: TextStyle(
                      fontFamily: MerriWeather, color: white, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 14.h,
                ),
                CustomTextfeild(
                  height: 46,
                  textStyle: TextStyle(
                      fontFamily: MerriWeather, color: white, fontSize: 14.sp),
                  prefix: Image.asset(
                    lockIcon,
                    scale: 25,
                    color: white,
                  ),
                  contentPadding: const EdgeInsets.only(left: 15, top: 10),
                  width: double.infinity,
                  containerborder: Border.all(color: primaryColor),
                  controller: passwordController,
                  isObscure: true,
                  textCapitalization: TextCapitalization.none,
                  containercolor: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  maxLines: 1,
                  hinttext: "Password",
                  hintStyle: TextStyle(
                      fontFamily: MerriWeather, color: white, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 14.h,
                ),
                CustomTextfeild(
                  height: 46,
                  textStyle: TextStyle(
                      fontFamily: MerriWeather, color: white, fontSize: 14.sp),
                  prefix: const Icon(
                    Icons.phone_android_sharp,
                    color: white,
                  ),
                  contentPadding: const EdgeInsets.only(left: 15, top: 10),
                  width: double.infinity,
                  containerborder: Border.all(color: primaryColor),
                  controller: phoneController,
                  textCapitalization: TextCapitalization.none,
                  textInputType: TextInputType.number,
                  containercolor: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  maxLines: 1,
                  maxLength: 10,
                  hinttext: "Phone Number",
                  hintStyle: TextStyle(
                      fontFamily: MerriWeather, color: white, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: white,
                      radius: 20,
                      child: Icon(
                        Icons.person,
                        color: greyColor,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    CustomButton(
                      title: "Select Image",
                      radius: 8,
                      paddingVertical: 10,
                      onPressed: () async {
                        galleryImage = await _picker.pickImage(
                            source: ImageSource.gallery);

                        if (galleryImage != null) {
                          galleryPickedImage.value = File(galleryImage!.path);


                        }
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Utils.regularBodyText(
                          text: "Already Have Account ?", textColor: white),
                      const Spacer(),
                      CustomButton(
                        title: "Sign In",
                        radius: 0,
                        textColor: white,
                        color: Colors.transparent,
                        fontSize: 14.sp,
                        paddingHorizontal: 0,
                        paddingVertical: 0,
                        onPressed: () {
                          navigationService.push(routeSignIn);
                        },
                      ),
                    ],
                  ),
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
                        paddingHorizontal: 25,
                        textColor: white,
                        onPressed: () async {

                          if (userNameController.text.isEmpty){

                            displayToast("User Name Be Can't Empty");
                          }else if (emailController.text.isEmpty){

                            displayToast("User EmailId Be Can't Empty");
                          }else if (passwordController.text.isEmpty){

                            displayToast("User Password Be Can't Empty");
                          }else if (phoneController.text.isEmpty){

                            displayToast("User PhoneNumber Be Can't Empty");
                          } else {
                            ReqSignUp  signUpData = ReqSignUp(
                              userName: userNameController.text,
                              userEmail: emailController.text,
                              userPass: passwordController.text,
                              userPhone: phoneController.text,
                              // file: galleryPickedImage.value.toString(),
                              file: "",
                              playerId: "User");


                          await  ref.read(authProvider.notifier).signUp(context: context, data: signUpData); }

                        },
                        radius: 8,
                        color: primaryColor),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
