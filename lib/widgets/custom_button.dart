
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';



class CustomButton extends StatelessWidget {


  CustomButton({Key? key, required this.title,  this.textColor,this.boxShadow,
    this.onPressed, this.color,
    // this.width,
    // this.height,
    this.borderradius,
    this.fontSize = 16,
    this.paddingHorizontal,
    this.paddingVertical,
     required this.radius,
     this.border
  })
      : super(key: key);

  final String title;
  final Color? color;
  final Color? textColor;
  // final double? height;
  // final double? width;
  final BoxBorder? border;
  final double? paddingHorizontal;
  final double radius;
  final double? paddingVertical;


   double? fontSize = 16;

  final List<BoxShadow>? boxShadow;
  final BorderRadiusGeometry? borderradius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? (){},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:  paddingHorizontal ??20 , vertical: paddingVertical ?? 8),
        // height: height,
        // width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color:   color ?? primaryColor  ,
            border: border,
            borderRadius:  borderradius ?? BorderRadius.circular(radius) ,
          boxShadow: boxShadow,
        ),
        child: Center(
          child: Text(title,style: TextStyle(color: textColor ?? white,fontSize: fontSize,fontWeight: FontWeight.normal, fontFamily: MerriWeather)),
        ),
      ),
    );
  }
}
