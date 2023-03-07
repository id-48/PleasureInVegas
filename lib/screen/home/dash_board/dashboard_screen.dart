import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:pleasure_in_vegas/di/locator.dart';
import 'package:pleasure_in_vegas/screen/home/componet/hotel_search_sheet.dart';

import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/constants/preference_key_constant.dart';
import 'package:pleasure_in_vegas/utils/dialog_utils.dart';
import 'package:pleasure_in_vegas/utils/image_utils.dart';
import 'package:pleasure_in_vegas/utils/preference_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_appbar.dart';
import 'package:pleasure_in_vegas/widgets/custom_bottom_sheet.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';
import 'package:pleasure_in_vegas/widgets/custom_card.dart';
import 'package:pleasure_in_vegas/widgets/custom_textfield.dart';
import 'package:pleasure_in_vegas/widgets/loading.dart';

import '../home_view_model.dart';

class DashBoard extends HookConsumerWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {



    final adultController = useTextEditingController();
    final childController = useTextEditingController();
    List<String> photos = [
      "https://cdn.pixabay.com/photo/2014/05/21/14/56/bedroom-349698_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/06/24/16/46/greece-820415_960_720.jpg",
      "https://cdn.pixabay.com/photo/2014/05/18/19/15/walkway-347319_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/09/21/09/53/villa-cortine-palace-949547_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/11/06/11/45/interior-1026449_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/01/26/11/05/beach-612553_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/06/12/12/10/castle-park-806854_960_720.jpg",
    ];

    final formattedChekInDate = useState<String>("DD");
    final formattedChekOutDate = useState<String>("DD");
    final formattedChekInMonth = useState<String>("MM");
    final formattedChekOutMonth = useState<String>("MM");
    final formattedChekInYear = useState<String>("YYYY");
    final formattedChekOutYear = useState<String>("YYYY");




    useEffect(() {
      ref.read(homeProvider.notifier).getMainMenu(context: context);

    }, []);

    final getMainMenuController = ref.watch(homeProvider);

    return Scaffold(
      appBar: CustomAppBar (
        title: "Pleasure IN Vegas",
        isBack: false,
        isCart: true,
        trailingonTap:  (){
          navigationService.push(routeCartScreen);
        },

      ),
      drawer: Drawer(
        width: Utils.getWidth(context) / 1.45,
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: primaryColor,
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
                      onTap: () async{
                        print("heleoeoe");
                        setBool(prefUserLogIn, false) ;

                        await navigationService.pushAndRemoveUntil(routeSignIn);

                      },
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
      body:
      Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
        child: SingleChildScrollView(
         // scrollDirection: Axis.vertical,
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

              /// texfiled
              // Padding(
              //   padding: const EdgeInsets.all(4.0),
              //   child: CustomTextfeild(
              //     height: 46,
              //     textStyle: const TextStyle(
              //         fontFamily: MerriWeather, color: black, fontSize: 14),
              //     prefix: Image.asset(crownIcon, scale: 20, color: appAmber),
              //     contentPadding: const EdgeInsets.only(left: 20, top: 14),
              //     width: double.infinity,
              //     // containerborder: Border.all(color: appAmber),
              //     controller: searchController,
              //     boxShadow: const [
              //       BoxShadow(
              //         color: Colors.black26,
              //         blurRadius: 5,
              //         // spreadRadius: 0.5,
              //         offset: Offset(2, 2),
              //       ),
              //       BoxShadow(
              //         color: Colors.white10,
              //         blurRadius: 5,
              //         // spreadRadius: 0.5,
              //         offset: Offset(-2, -2),
              //       ),
              //     ],
              //     textCapitalization: TextCapitalization.none,
              //     containercolor: Colors.white.withOpacity(0.9),
              //     borderRadius: BorderRadius.circular(25),
              //     maxLines: 1,
              //     hinttext: "Search Hotels",
              //     hintStyle: const TextStyle(
              //         fontFamily: MerriWeather, color: black, fontSize: 14),
              //   ),
              // ),

              GestureDetector(
                onTap:  (){
                  customBottomSheet(context,child:  const HotelSearchSheet() );
                },
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: CustomCard(
                    radius: 25,
                    child: Row(
                      children: [
                        Image.asset(crownIcon, scale: 20, color: primaryColor),
                         SizedBox(width: 10.w,),
                         Utils.regularBodyText(text: "Search Hotel"),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 14.h,
              ),

              const Divider(
                height: 2,
                color: primaryColor,
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
                        child: GestureDetector(
                          onTap: () async {
                            DateTime? checkInDate =
                                await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1850),
                              lastDate: DateTime(2200),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: const ColorScheme.light(
                                      primary: primaryColor, // <-- SEE HERE
                                      onPrimary:
                                      white, // <-- SEE HERE
                                      onSurface:
                                      black, // <-- SEE HERE
                                    ),
                                    textButtonTheme:
                                    TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        primary:
                                        primaryColor, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            );

                            if (checkInDate != null) {
                              // print(pickedDate);
                              formattedChekInDate.value =
                                  DateFormat('dd')
                                      .format(checkInDate);
                              formattedChekInMonth.value =
                                  DateFormat('MMM')
                                      .format(checkInDate);
                              formattedChekInYear.value =
                                  DateFormat('yyyy')
                                      .format(checkInDate);


                            } else {
                              displayToast(
                                  "Please Select Your Date.");
                            }
                          },
                          child: CustomCard(
                            radius: 20,
                            margin: const EdgeInsets.all(6),


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
                                      color: primaryColor,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Utils.regularBodyText(text: "CHECK IN")

                                  ],
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Utils.regularSubHeadingText(text: formattedChekInDate.value ,textSize: 22.sp),


                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Utils.regularSubHeadingText(text: formattedChekInMonth.value ),
                                        Utils.regularSubHeadingText(text: formattedChekInYear.value ),

                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                    const VerticalDivider(
                      width: 3,
                      color: primaryColor,
                      thickness: 2,
                    ),
                    Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () async {
                            DateTime? checkOutDate =
                                await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1850),
                              lastDate: DateTime(2200),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: const ColorScheme.light(
                                      primary: primaryColor, // <-- SEE HERE
                                      onPrimary:
                                      white, // <-- SEE HERE
                                      onSurface:
                                      black, // <-- SEE HERE
                                    ),
                                    textButtonTheme:
                                    TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        primary:
                                        primaryColor, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            );

                            if (checkOutDate != null) {
                              // print(pickedDate);
                              formattedChekOutDate.value =
                                  DateFormat('dd')
                                      .format(checkOutDate);
                              formattedChekOutMonth.value =
                                  DateFormat('MMM')
                                      .format(checkOutDate);
                              formattedChekOutYear.value =
                                  DateFormat('yyyy')
                                      .format(checkOutDate);


                            } else {
                              displayToast(
                                  "Please Select Your Date.");
                            }
                          },
                          child: CustomCard(
                            margin: const EdgeInsets.all(6),
                            radius:  20,

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
                                      color: primaryColor,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Utils.regularBodyText(text: "CHECK OUT")

                                  ],
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Utils.regularSubHeadingText(text: formattedChekOutDate.value ,textSize: 22.sp),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Utils.regularSubHeadingText(text: formattedChekOutMonth.value ),
                                        Utils.regularSubHeadingText(text: formattedChekOutYear.value ),

                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),

              const Divider(
                height: 2,
                color: primaryColor,
                thickness: 1.5,
              ),

              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: CustomCard(
                          margin: const EdgeInsets.all(6),
                          radius: 20,

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
                                    color: primaryColor,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Utils.regularBodyText(text:  "ADULT")

                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                height: 40.h,
                                width: 100.w,

                                child: CustomTextfeild(


                                  textStyle: const TextStyle(
                                      fontFamily: MerriWeather, color: black, fontSize: 14),

                                  contentPadding: const EdgeInsets.only(left: 40 ,bottom: 10),
                                  width: double.infinity,
                                  textInputType: TextInputType.number,

                                  controller: adultController,
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

                                  borderRadius: BorderRadius.circular(8),
                                  maxLines: 1,
                                  maxLength: 3,
                                  hinttext: "00",
                                  hintStyle: const TextStyle(
                                      fontFamily: MerriWeather, color: black, fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )),
                    const VerticalDivider(
                      width: 3,
                      color: primaryColor,
                      thickness: 2,
                    ),
                    Expanded(
                        flex: 1,
                        child: CustomCard(
                          margin: const EdgeInsets.all(6),
                     radius: 20,
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
                                    color: primaryColor,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Utils.regularBodyText(text:  "CHILD")

                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                height: 40.h,
                                width: 100.w,

                                child: CustomTextfeild(


                                  textStyle: const TextStyle(
                                      fontFamily: MerriWeather, color: black, fontSize: 14),

                                  contentPadding: const EdgeInsets.only(left: 40 ,bottom: 10),
                                  width: double.infinity,
                                  textInputType: TextInputType.number,

                                  controller: childController,
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

                                  borderRadius: BorderRadius.circular(8),
                                  maxLines: 1,
                                  maxLength: 3,
                                  hinttext: "00",
                                  hintStyle: const TextStyle(
                                      fontFamily: MerriWeather, color: black, fontSize: 14),
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
                color: primaryColor,
                thickness: 1.5,
              ),

              SizedBox(
                height: 14.h,
              ),

              CustomButton(
                  // height: 40.h,
                  onPressed:  (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)  => HotelListScreen()));
                    navigationService.push(routeHotelListScreen);

                  },
                  // width: Utils.getWidth(context) - 86,
                  color: primaryColor,
                  radius: 8,
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


              getMainMenuController.when(data: (data){


                return SizedBox(

                  child: GridView.custom(
                    shrinkWrap: true,
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
                      childCount: data.data.length,
                          (context, index) {
                          return   Container(
                                color: redFroly,
                                // child: Text(
                                //   "index: $index,\n"
                                //       "extent: ${(index % 5 + 1) * 100}",style: const TextStyle(color: black),
                                // ),
                                child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => const SearchHotelScreen()),
                                      navigationService.push(
                                          routeSearchHotelScreen);
                                      // );
                                    },
                                    child: Image.network(
                                       photos[index] ,
                                      fit: BoxFit.fill,
                                    )
                                )
                            );

                          }
                    ),
                  ),
                );

              },loading: () => const Loading(), error: (obj, trace) => ErrorWidget(obj),),

              // SizedBox(
              //   height: 680,
              //   child: GridView.custom(
              //     physics: const NeverScrollableScrollPhysics(),
              //     // scrollDirection: Axis.horizontal,
              //     gridDelegate: SliverQuiltedGridDelegate(
              //       crossAxisCount: 4,
              //       mainAxisSpacing: 4,
              //       crossAxisSpacing: 4,
              //       // repeatPattern: QuiltedGridRepeatPattern.inverted,
              //       pattern: [
              //         const QuiltedGridTile(2, 4),
              //         const QuiltedGridTile(2, 2),
              //         const QuiltedGridTile(1, 2),
              //         const QuiltedGridTile(1, 2),
              //         const QuiltedGridTile(2, 4),
              //         const QuiltedGridTile(2, 2),
              //         const QuiltedGridTile(2, 2),
              //       ],
              //     ),
              //     childrenDelegate: SliverChildBuilderDelegate(
              //       // childCount: 7,
              //       childCount: photos.length,
              //       (context, index) => Container(
              //           color: redFroly,
              //           // child: Text(
              //           //   "index: $index,\n"
              //           //       "extent: ${(index % 5 + 1) * 100}",style: const TextStyle(color: black),
              //           // ),
              //           child: GestureDetector(
              //               onTap: () {
              //                 // Navigator.push(
              //                 //   context,
              //                 //   MaterialPageRoute(
              //                 //       builder: (context) => const SearchHotelScreen()),
              //                 navigationService.push(routeSearchHotelScreen);
              //                 // );
              //               },
              //               child: Image.network(
              //                 photos[index],
              //                 fit: BoxFit.fill,
              //               ))),
              //     ),
              //   ),
              // ),

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
              backgroundColor: primaryColor,
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




