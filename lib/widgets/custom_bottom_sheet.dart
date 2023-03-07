




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';

 customBottomSheet (context,{required Widget child}) {


   return showModalBottomSheet(
       context: context,
       isScrollControlled: true,
       backgroundColor: Colors.transparent,
       builder: (context) => Container(
     // height: MediaQuery.of(context).size.height - 100.h,
     height: MediaQuery.of(context).size.height * 0.965,
     decoration: const BoxDecoration(
       color: white,
       borderRadius: BorderRadius.only(
         topLeft: Radius.circular(16.0),
         topRight: Radius.circular(16.0),
       ),
     ),
     child: child
   ),
   );
 }
