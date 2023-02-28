
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';



class CustomButton extends StatelessWidget {
   CustomButton({Key? key, required this.title,  this.textColor,this.boxShadow,
    this.onPressed, this.color, this.width, this.height,this.borderradius,
    this.fontSize = 16,
     this.border
  })
      : super(key: key);

  final String title;
  final Color? color;
  final Color? textColor;
  final double? height;
  final double? width;
  final BoxBorder? border;

   double? fontSize = 16;

  final List<BoxShadow>? boxShadow;
  final BorderRadiusGeometry? borderradius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? (){},
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            border: border,
            borderRadius: borderradius,
          boxShadow: boxShadow,
        ),
        child: Center(
          child: Text(title,style: GoogleFonts.poppins(color: textColor ?? white,fontSize: fontSize,fontWeight: FontWeight.normal,)),
        ),
      ),
    );
  }
}
