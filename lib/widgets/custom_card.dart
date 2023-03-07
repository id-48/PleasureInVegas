

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';

class CustomCard extends StatelessWidget {
  final Widget child ;
  final double   radius ;
  final double ?  padding ;
  final EdgeInsetsGeometry? margin ;
  final Color? color ;

  const CustomCard({
    Key? key,
    required this.child,
    required this.radius,
    this.padding ,

    this.margin,
    this.color


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.all( padding ?? 10),
        margin: margin ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color:  color ?? Colors.white.withOpacity(0.9),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              // spreadRadius: 0.5,
              offset: Offset(2, 2),
            ),
            BoxShadow(
              color: Colors.white10,
              blurRadius: 5,
              // spreadRadius: 0.5,
              offset: Offset(-2, -2),
            ),
          ],
        ),


        child: child



    );
  }
}
