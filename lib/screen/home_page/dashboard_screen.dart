import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_'
    ''
    ''
    ''
    ''
    'screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/screen/home_page/componet/search_hotels_screen.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';
import 'package:pleasure_in_vegas/widgets/custom_textfield.dart';

class DashBoard extends HookConsumerWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    List<String> photos = [
      "https://cdn.pixabay.com/photo/2014/05/21/14/56/bedroom-349698_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/06/24/16/46/greece-820415_960_720.jpg",
      "https://cdn.pixabay.com/photo/2014/05/18/19/15/walkway-347319_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/09/21/09/53/villa-cortine-palace-949547_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/11/06/11/45/interior-1026449_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/01/26/11/05/beach-612553_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/06/12/12/10/castle-park-806854_960_720.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Pleasure In Vegas",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              fontFamily: MerriWeather),
        ),
        centerTitle: true,
        backgroundColor: appAmberLight,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        width: Utils.getWidth(context) / 1.45,
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: appAmberLight,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          "https://variety.com/wp-content/uploads/2016/07/narcos-netflix.jpg?w=681&h=383&crop=1"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Don Pablo Escobar",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: MerriWeather,
                          color: white),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 20,),
            Expanded(
              child: Container(
                // height: 200,
                color: white,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    ListTile(
                      onTap: () {},
                      title: const Text(
                        "Home",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: MerriWeather,
                            color: black),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text(
                        "Feedback",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: MerriWeather,
                            color: black),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text(
                        "Directory",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: MerriWeather,
                            color: black),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text(
                        "Logout",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: MerriWeather,
                            color: black),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // CustomTextfeild(
              //   height: 46,
              //   textStyle: const TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14),
              //   prefix: Image.asset(crownIcon,scale: 20,color: appAmber),
              //   contentPadding: const EdgeInsets.only(left: 20,top: 10),
              //   width: double.infinity,
              //   containerborder: Border.all(color: appAmber),
              //   controller: searchController,
              //   textCapitalization: TextCapitalization.none,
              //   containercolor: Colors.black.withOpacity(0.7),
              //   borderRadius: BorderRadius.circular(25),
              //   maxLines: 1,
              //   hinttext: "Search Hotels",
              //   hintStyle: const TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14),
              // ),

              // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CustomTextfeild(
                  height: 46,
                  textStyle: const TextStyle(
                      fontFamily: MerriWeather, color: black, fontSize: 14),
                  prefix: Image.asset(crownIcon, scale: 20, color: appAmber),
                  contentPadding: const EdgeInsets.only(left: 20, top: 14),
                  width: double.infinity,
                  // containerborder: Border.all(color: appAmber),
                  controller: searchController,
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
                  textCapitalization: TextCapitalization.none,
                  containercolor: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(25),
                  maxLines: 1,
                  hinttext: "Search Hotels",
                  hintStyle: const TextStyle(
                      fontFamily: MerriWeather, color: black, fontSize: 14),
                ),
              ),

              SizedBox(
                height: 14.h,
              ),

              const Divider(
                height: 2,
                color: appAmber,
                thickness: 1.5,
              ),

              SizedBox(
                height: 8.h,
              ),



              // IntrinsicHeight(
              //   child: Row(
              //     children: [
              //       Expanded(
              //           flex: 1,
              //           child: Container(
              //             margin: const EdgeInsets.all(6),
              //             padding: const EdgeInsets.symmetric(vertical: 10),
              //             decoration: const BoxDecoration(
              //               color: black,
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.center,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Row(
              //                   mainAxisAlignment: MainAxisAlignment.start,
              //                   children: [
              //                     SizedBox(width: 10.w,),
              //                     const Icon(Icons.date_range,color: appAmber,size: 25,),
              //                     SizedBox(width: 10.w,),
              //                     Text("CHECK IN",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14.sp,fontWeight: FontWeight.w300),),
              //
              //                   ],
              //                 ),
              //
              //                 SizedBox(height: 7.h,),
              //
              //                 Row(
              //                   // crossAxisAlignment: CrossAxisAlignment.center,
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     Text("23",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 22.sp,fontWeight: FontWeight.w600),),
              //                     SizedBox(width: 10.w,),
              //
              //                     Column(
              //                       crossAxisAlignment: CrossAxisAlignment.start,
              //                       // mainAxisAlignment: MainAxisAlignment.start,
              //                       children: [
              //                         Text("Feb",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 15.sp),),
              //                         // SizedBox(height: 3.h,),
              //                         Text("2023",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 15.sp),),
              //                       ],
              //                     ),
              //                   ],
              //                 ),
              //
              //               ],
              //             ),
              //           )
              //       ),
              //
              //
              //       const VerticalDivider(
              //         width: 3,
              //         color: appAmber,
              //         thickness: 2,
              //       ),
              //
              //       Expanded(
              //           flex: 1,
              //           child: Container(
              //             margin: const EdgeInsets.all(6),
              //             padding: const EdgeInsets.symmetric(vertical: 10),
              //             decoration: const BoxDecoration(
              //               color: black,
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.center,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Row(
              //                   mainAxisAlignment: MainAxisAlignment.start,
              //                   children: [
              //                     SizedBox(width: 10.w,),
              //                     const Icon(Icons.date_range,color: appAmber,size: 25,),
              //                     SizedBox(width: 10.w,),
              //                     Text("CHECK OUT",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14.sp,fontWeight: FontWeight.w300),),
              //
              //                   ],
              //                 ),
              //
              //                 SizedBox(height: 7.h,),
              //
              //                 Row(
              //                   // crossAxisAlignment: CrossAxisAlignment.center,
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     Text("24",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 22.sp,fontWeight: FontWeight.w600),),
              //                     SizedBox(width: 10.w,),
              //
              //                     Column(
              //                       crossAxisAlignment: CrossAxisAlignment.start,
              //                       // mainAxisAlignment: MainAxisAlignment.start,
              //                       children: [
              //                         Text("Feb",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 15.sp),),
              //                         // SizedBox(height: 3.h,),
              //                         Text("2023",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 15.sp),),
              //                       ],
              //                     ),
              //                   ],
              //                 ),
              //
              //               ],
              //             ),
              //           )
              //       ),
              //     ],
              //   ),
              // ),
              //
              // const Divider(
              //   height: 2,
              //   color: appAmber,
              //   thickness: 1.5,
              // ),
              //
              // IntrinsicHeight(
              //   child:    Row(
              //     children: [
              //       Expanded(
              //           flex: 1,
              //           child: Container(
              //             margin: const EdgeInsets.all(6),
              //             padding: const EdgeInsets.symmetric(vertical: 10),
              //             decoration: const BoxDecoration(
              //               color: black,
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.center,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Row(
              //                   mainAxisAlignment: MainAxisAlignment.start,
              //                   children: [
              //                     SizedBox(width: 10.w,),
              //                     const Icon(Icons.person,color: appAmber,size: 25,),
              //                     SizedBox(width: 10.w,),
              //                     Text("ADULT",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14.sp,fontWeight: FontWeight.w300),),
              //
              //                   ],
              //                 ),
              //
              //                 SizedBox(height: 10.h,),
              //
              //                 Container(
              //                   height: 40.h,
              //                   width: 100.w,
              //                   alignment: Alignment.center,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(7),
              //                     color: const Color(0xffB2B2B2),
              //                   ),
              //                   child:  Text("1",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 17.sp,fontWeight: FontWeight.w300),),
              //                 ),
              //
              //               ],
              //             ),
              //           )
              //       ),
              //
              //
              //       const VerticalDivider(
              //         width: 3,
              //         color: appAmber,
              //         thickness: 2,
              //       ),
              //
              //       Expanded(
              //           flex: 1,
              //           child: Container(
              //             margin: const EdgeInsets.all(6),
              //             padding: const EdgeInsets.symmetric(vertical: 10),
              //             decoration: const BoxDecoration(
              //               color: black,
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.center,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Row(
              //                   mainAxisAlignment: MainAxisAlignment.start,
              //                   children: [
              //                     SizedBox(width: 10.w,),
              //                     const Icon(Icons.king_bed_outlined,color: appAmber,size: 25,),
              //                     SizedBox(width: 10.w,),
              //                     Text("CHILD",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 14.sp,fontWeight: FontWeight.w300),),
              //
              //                   ],
              //                 ),
              //
              //                 SizedBox(height: 10.h,),
              //
              //                 Container(
              //                   height: 40.h,
              //                   width: 100.w,
              //                   alignment: Alignment.center,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(7),
              //                     color: const Color(0xffB2B2B2),
              //                   ),
              //                   child:  Text("1",style: TextStyle(fontFamily: MerriWeather,color: white,fontSize: 17.sp,fontWeight: FontWeight.w300),),
              //                 ),
              //
              //               ],
              //             ),
              //           )
              //       ),
              //     ],
              //   ),
              //
              // ),
              //
              // SizedBox(height: 8.h,),
              //
              // const Divider(
              //   height: 2,
              //   color: appAmber,
              //   thickness: 1.5,
              // ),
              //
              // SizedBox(height: 14.h,),
              //
              // CustomButton(
              //
              //     height: 40.h,
              //     width: Utils.getWidth(context) - 86,
              //     color: appAmberMedium,
              //     borderradius: BorderRadius.circular(8),
              //     title:  "SEARCH HOTELS"
              //
              // ),
              //
              // SizedBox(height: 20.h,),
              //





              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                            color: white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  const Icon(
                                    Icons.date_range,
                                    color: appAmber,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "CHECK IN",
                                    style: TextStyle(
                                        fontFamily: MerriWeather,
                                        color: black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "23",
                                    style: TextStyle(
                                        fontFamily: MerriWeather,
                                        color: black,
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Feb",
                                        style: TextStyle(
                                            fontFamily: MerriWeather,
                                            color: black,
                                            fontSize: 15.sp),
                                      ),
                                      // SizedBox(height: 3.h,),
                                      Text(
                                        "2023",
                                        style: TextStyle(
                                            fontFamily: MerriWeather,
                                            color: black,
                                            fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    const VerticalDivider(
                      width: 3,
                      color: appAmber,
                      thickness: 2,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                            color: white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  const Icon(
                                    Icons.date_range,
                                    color: appAmber,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "CHECK OUT",
                                    style: TextStyle(
                                        fontFamily: MerriWeather,
                                        color: black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "24",
                                    style: TextStyle(
                                        fontFamily: MerriWeather,
                                        color: black,
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Feb",
                                        style: TextStyle(
                                            fontFamily: MerriWeather,
                                            color: black,
                                            fontSize: 15.sp),
                                      ),
                                      // SizedBox(height: 3.h,),
                                      Text(
                                        "2023",
                                        style: TextStyle(
                                            fontFamily: MerriWeather,
                                            color: black,
                                            fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),

              const Divider(
                height: 2,
                color: appAmber,
                thickness: 1.5,
              ),

              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                            color: white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  const Icon(
                                    Icons.person,
                                    color: appAmber,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "ADULT",
                                    style: TextStyle(
                                        fontFamily: MerriWeather,
                                        color: black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                height: 40.h,
                                width: 100.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: white,
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
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontFamily: MerriWeather,
                                      color: black,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        )),
                    const VerticalDivider(
                      width: 3,
                      color: appAmber,
                      thickness: 2,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                            color: white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  const Icon(
                                    Icons.king_bed_outlined,
                                    color: appAmber,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "CHILD",
                                    style: TextStyle(
                                        fontFamily: MerriWeather,
                                        color: black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                height: 40.h,
                                width: 100.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: white,
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
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontFamily: MerriWeather,
                                      color: black,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),

              SizedBox(
                height: 8.h,
              ),

              const Divider(
                height: 2,
                color: appAmber,
                thickness: 1.5,
              ),

              SizedBox(
                height: 14.h,
              ),

              CustomButton(
                  height: 40.h,
                  width: Utils.getWidth(context) - 86,
                  color: appAmberMedium,
                  borderradius: BorderRadius.circular(8),
                  title: "SEARCH HOTELS"),

              SizedBox(
                height: 20.h,
              ),

              // StaggeredGrid.count(
              //   crossAxisCount: 4,
              //   mainAxisSpacing: 4,
              //   crossAxisSpacing: 4,
              //
              //   children:  [
              //     StaggeredGridTile.count(
              //       crossAxisCellCount: 2,
              //       mainAxisCellCount: 2,
              //       child: Container(
              //              color : redFroly,child: Text("index: 0")),
              //     ),
              //     StaggeredGridTile.count(
              //       crossAxisCellCount: 2,
              //       mainAxisCellCount: 1,
              //       child: Container(
              //           color : redFroly,child: Text("index: 0")),
              //     ),
              //     StaggeredGridTile.count(
              //       crossAxisCellCount: 1,
              //       mainAxisCellCount: 1,
              //       child: Container(
              //           color : appAmberMedium,child: Text("index: 1")),
              //     ),
              //     StaggeredGridTile.count(
              //       crossAxisCellCount: 1,
              //       mainAxisCellCount: 1,
              //       child: Container(
              //           color : appColor,child: Text("index: 0")),
              //     ),
              //     StaggeredGridTile.count(
              //       crossAxisCellCount: 4,
              //       mainAxisCellCount: 2,
              //       child: Container(
              //           color : greyColor,child: Text("index: 0")),
              //     ),
              //   ],
              // ),
              //
              //     SizedBox(height: 40.h,),
              //
              // Container(
              //   height: 200,
              //   child: MasonryGridView.count(
              //     itemCount: 5,
              //     crossAxisCount: 3,
              //     mainAxisSpacing: 4,
              //     crossAxisSpacing: 4,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         color: redFroly,
              //         child: Text(
              //           "index: $index,\n"
              //           "extent: ${(index % 5 + 1) * 100}",style: TextStyle(color: black),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              //
              //     SizedBox(height: 40.h,),

              SizedBox(
                height: 680,
                child: GridView.custom(
                  physics: const NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    // repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: [
                      const QuiltedGridTile(2, 4),
                      const QuiltedGridTile(2, 2),
                      const QuiltedGridTile(1, 2),
                      const QuiltedGridTile(1, 2),
                      const QuiltedGridTile(2, 4),
                      const QuiltedGridTile(2, 2),
                      const QuiltedGridTile(2, 2),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    // childCount: 7,
                    childCount: photos.length,
                    (context, index) => Container(
                        color: redFroly,
                        // child: Text(
                        //   "index: $index,\n"
                        //       "extent: ${(index % 5 + 1) * 100}",style: const TextStyle(color: black),
                        // ),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SearchHotelScreen()),
                              );
                            },
                            child: Image.network(
                              photos[index],
                              fit: BoxFit.fill,
                            ))),
                  ),
                ),
              ),

              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: SizedBox(
          height: 80,
          width: 80,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: appAmberLight,
              child: const Icon(
                Icons.mic,
                color: white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


