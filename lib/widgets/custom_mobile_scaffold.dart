
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/widgets/custom_mobile_drawer.dart';


class CustomMobileScaffold extends StatefulWidget {
  final Widget child;
  final Widget? tabitem;
  final String name;
  final Color bgColor;
  final Widget? floatingButton;

  const CustomMobileScaffold({
    Key? key,
    required this.child,
    required this.name,
    this.floatingButton,
    this.tabitem,
    this.bgColor = white,
  }) : super(key: key);

  @override
  State<CustomMobileScaffold> createState() => _CustomMobileScaffoldState();
}

class _CustomMobileScaffoldState extends State<CustomMobileScaffold> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: key,
        drawer: const CustomMobileDrawer(),
        body: Container(
          color: widget.bgColor,
          child: Column(
            children: [
              Container(
                height: 75.h,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 6,
                      offset: Offset(0,3.h)
                    )
                  ],
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          key.currentState?.openDrawer();
                        },
                        child: Image.asset(drawerLogo)
                      ),
                      Text(widget.name,style: TextStyle(fontSize: 20.sp,fontFamily: MerriWeather,fontWeight: FontWeight.bold,color: buttonBlueColor),),
                      InkWell(
                          onTap: () {

                          },
                          child: Image.asset(notoficationLogo)
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              widget.child,
            ],
          ),
        ),
        floatingActionButton: widget.floatingButton,
      ),
    );
  }
}
