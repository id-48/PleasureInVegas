import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';



class Utils {
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static Widget sizeBoxHeight(double height) {
    return SizedBox(
      height: height,
    );
  }

  static Widget sizeBoxWidth(double width) {
    return SizedBox(
      width: width,
    );
  }

  static Widget imageAssets(String images,
      [double? width, double? height, BoxFit? boxFit]) {
    return Image.asset(
      images,
      width: width,
      height: height,
      fit: boxFit,
    );
  }

  static Widget imageNetwork(String images, double width, double height,
      [BoxFit? boxFit]) {
    return Image.network(
      images,
      width: width,
      height: height,
      fit: boxFit,
      errorBuilder: (context, error, stackTrace) => Utils.imageAssets('assets/icons/ic_menu.png', width, height, BoxFit.cover),
    );
  }

  static Widget svgIcon(String icon, {var height, var width}) {
    return SvgPicture.asset(icon, height: height, width: width);
  }

  static Widget svgIconSize(String icon, double iconWidth, double iconHeight, {Color? color}) {
    return SvgPicture.asset(
      icon,
      width: iconWidth,
      height: iconHeight,
      color: color,
    );
  }

  static Widget svgIconColor(
      String icon, double iconWidth, double iconHeight, Color color) {
    return SvgPicture.asset(
      icon,
      width: iconWidth,
      height: iconHeight,
      color: color,
    );
  }

  static Widget smallHeadingText(
      {required String text, double? textSize, Color? color}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: MerriWeather,
        fontSize: textSize ?? 20,
        fontWeight: FontWeight.w800,
        color: color ?? Colors.black,
      ),
    );
  }

  static smallSubHeadingText(
      {required String text, Color? textColor, double? textSize}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: MerriWeather,
        color: textColor ?? Colors.black,
        fontSize: textSize ?? 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static smallBodyText(
      {required String text, Color? textColor, double? textSize}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: MerriWeather,
        color: textColor ?? black,
        fontSize: textSize ?? 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static Widget regularHeadingText(
      {required String text, double? textSize, Color? color}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'DMSans',
        fontSize: textSize ?? 20,
        fontWeight: FontWeight.w800,
        color: color ?? black,
      ),
    );
  }

  static regularSubHeadingText(
      {required String text, Color? textColor, double? textSize}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: MerriWeather,
        color: textColor ?? black,
        fontSize: textSize ?? 16.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static regularBodyText(
      {required String text,
      Color? textColor,
      double? textSize,
      TextAlign? textAlign}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: MerriWeather,
        color: textColor ?? black,
        fontSize: textSize ?? 14.sp,
        fontWeight: FontWeight.w400,
      ),
      textAlign: textAlign,
    );
  }

  static Widget boldHeadingText(
      {required String text, double? textSize, Color? color}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: MerriWeather,
        fontSize: textSize ?? 20,
        fontWeight: FontWeight.w800,
        color: color ?? Colors.black,
      ),
    );
  }

  static boldSubHeadingText(
      {required String text, Color? textColor, double? textSize}) {
    return Text(
      text,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontFamily: MerriWeather,
        color: textColor ?? Colors.black,
        fontSize: textSize ?? 16.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static boldBodyText(
      {required String text, Color? textColor, double? textSize}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: MerriWeather,
        color: textColor ?? black,
        fontSize: textSize ?? 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
