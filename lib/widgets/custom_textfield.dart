// import 'package:flutter/material.dart';
//
// import '../utils/color_utils.dart';
//
// class CustomTextField extends StatelessWidget {
//   const CustomTextField(
//       {Key? key,
//       required this.label,
//       required this.controller,
//       this.onTap,
//         this.suffixIcon,
//         this.onEditingComplated,
//         this.onChanged,
//         this.readOnly,
//         this.onSaved,
//         this.keyBoardTypes,
//       this.validator, this.isObscure})
//       : super(key: key);
//
//   final String label;
//   final Widget? suffixIcon;
//   final TextEditingController controller;
//   final void Function()? onTap;
//   final void Function()? onEditingComplated;
//   final void Function(String?)? onSaved;
//   final String? Function(String?)? validator;
//   final TextInputType? keyBoardTypes;
//   final bool? isObscure ;
//   final bool? readOnly ;
//   final void Function(String)? onChanged;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5), color: Colors.black),
//       child: TextFormField(
//         keyboardType: keyBoardTypes,
//
//         onChanged: onChanged,
//         validator: validator,
//        onSaved: onSaved,
//        onEditingComplete: onEditingComplated,
//         onTap: onTap,
//         readOnly: readOnly ?? false,
//         obscureText: isObscure??false,
//         controller: controller,
//         decoration: InputDecoration(
//           suffixIcon: suffixIcon,
//           errorBorder: InputBorder.none,
//             border: InputBorder.none,
//             focusedBorder: InputBorder.none,
//             enabledBorder: InputBorder.none,
//             labelStyle: const TextStyle(color: Colors.red, fontSize: 14),
//             floatingLabelStyle:
//                 const TextStyle(fontSize: 11, color: Colors.blue),
//             labelText: label,
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';

class CustomTextfeild extends HookWidget {
  const CustomTextfeild({
    Key? key,
    this.hinttext,
    this.validator,
    this.focusNode,
    required this.controller,
    this.maxLength,
    this.textInputFormatter,
    this.isPasswordField,
    this.textInputType,
    this.onFieldSubmitted,
    this.prefix,
    this.containercolor,
    this.textStyle,
    this.border,
    this.fillcolor,
    this.hintStyle,
    this.maxLines,
    this.containerborder,
    this.gradient,
    this.borderRadius,
    this.contentPadding,
    this.height,
    this.width,
    this.enabled,
    this.boxShadow,
    required this.textCapitalization,
    this.suffixText,
    bool? isObscure,
  }) : super(key: key);
  final String? hinttext;
  final String? suffixText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final TextEditingController controller;
  final int? maxLength;
  final List<TextInputFormatter>? textInputFormatter;
  final bool? isPasswordField;
  final TextInputType? textInputType;
  final Function(String)? onFieldSubmitted;
  final InputBorder? border;
  final Color? fillcolor;
  final Color? containercolor;
  final Widget? prefix;
  final BoxBorder? containerborder;
  final int? maxLines;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? contentPadding;
  final BorderRadiusGeometry? borderRadius;
  final bool? enabled;
  final TextCapitalization textCapitalization;
  // final Color? gradientone;
  // final Color? gradienttwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,

        color: containercolor,
        border: containerborder,
        boxShadow: boxShadow,
        gradient: gradient,
      ),
      child: TextFormField(
        textCapitalization: textCapitalization,
        enabled: enabled,
        style: textStyle,
        validator: validator,
        controller: controller,
        focusNode: focusNode,
        keyboardType: textInputType,
        maxLength: maxLength,
        onFieldSubmitted: onFieldSubmitted,
        inputFormatters: textInputFormatter,
        maxLines: maxLines,
        decoration: InputDecoration(
            counterText: '',
            contentPadding: contentPadding,
            hintStyle: hintStyle,
            hintText: hinttext,
            border: InputBorder.none,
            prefixIcon: prefix,
            suffixText: suffixText,
            labelStyle: TextStyle(
                color: Color(0xFF898989),
                fontSize: 13,
                fontFamily: MerriWeather,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}


