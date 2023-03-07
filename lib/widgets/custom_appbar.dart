import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pleasure_in_vegas/di/locator.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';

import '../utils/color_utils.dart';

class  CustomAppBar extends StatelessWidget with PreferredSizeWidget {
     CustomAppBar({
    Key? key,
    this.title,
    this.isBack,
     this.trailingonTap,  this.leadingOntap ,
       this.leadingChild,
       this.isCart ,


  }) : super(key: key);

  final String? title;
  final bool? isBack;
  final bool? isCart;
     final  Widget? leadingChild ;



  void Function()? trailingonTap ;


  void Function()? leadingOntap ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 1,
      backgroundColor: primaryColor,
      // leadingWidth: isHome == true ? 0 : 50,
      leading:  isBack == true ? GestureDetector(
          onTap: leadingOntap ?? () {
            navigationService.pop();
          },
          child: const  Icon(
            Icons.keyboard_backspace_sharp,
            color: white,
          )) : leadingChild ,
      title: Text(
              title ?? "",
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            fontFamily: MerriWeather),
            ),
      actions: [

         isCart ==  true ?GestureDetector(
          onTap: trailingonTap,

          child:  Icon(
            Icons.shopping_cart_outlined,
            color: white,
          ),) : Container() ,
        SizedBox(width: 10.w,)




      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
