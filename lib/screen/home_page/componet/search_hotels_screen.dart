import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';

class SearchHotelScreen extends HookConsumerWidget {
  const SearchHotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TabController? tabController;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Hotels",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              fontFamily: MerriWeather),
        ),
        centerTitle: true,
        backgroundColor: appAmberLight,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.keyboard_backspace_sharp,
              color: white,
            )),
      ),
      body: DefaultTabController(
        length: 2,
        // initialIndex: 1,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                // left: 16,right: 16
              ),
              height: 45,
              decoration: BoxDecoration(

                color: Colors.grey[300],
                // borderRadius: BorderRadius.circular(
                //   25.0,
                // ),
              ),
              child: TabBar(
                controller: tabController,
                indicator: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(
                  //   25.0,
                  // ),
                  color: appAmberLight,
                ),
                labelColor: white,
                unselectedLabelColor: black,
                tabs: [
                  Tab(
                    child: Text(
                      "Night Club",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: MerriWeather),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Social Lounge",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: MerriWeather),
                    ),
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: white,
                      
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Container(
                            // height: 250,

                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                   topLeft: Radius.circular(10),

                                  ),
                                  child: Image.network(
                                    "https://cdn.pixabay.com/photo/2018/02/24/17/17/window-3178666_960_720.jpg",
                                    height: 110,
                                    width: 320,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 20),
                                  height: 80,
                                  width: 320,
                                  decoration: const BoxDecoration(
                                      boxShadow:  [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10,
                                          spreadRadius: 0.5,
                                          offset: Offset(2, 2),
                                        ),
                                        BoxShadow(
                                          color: Colors.white70,
                                          blurRadius: 10,
                                          spreadRadius: 0.5,
                                          offset: Offset(-2, -2),
                                        ),
                                      ],
                                      color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                     bottomRight: Radius.circular(10),
                                    )
                                  ),

                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "The Berkley, Las Vegas ",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: MerriWeather),
                                          ),
                                          Text(
                                            "★ ★ ★ ★ (4)",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: MerriWeather),
                                          ),


                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: appAmberLight,
                                          ),


                                          // color: Colors.white,
                                        child:  Text(

                                          "\$ 200 ",


                                         textAlign: TextAlign.center ,
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: MerriWeather),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: white,

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Container(
                            // height: 250,

                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                  child: Image.network(
                                    "https://cdn.pixabay.com/photo/2015/12/28/10/19/hotel-1111199_960_720.jpg",
                                    height: 110,
                                    width: 320,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 20),
                                  height: 80,
                                  width: 320,
                                  decoration: const BoxDecoration(
                                      boxShadow:  [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10,
                                          spreadRadius: 0.5,
                                          offset: Offset(2, 2),
                                        ),
                                        BoxShadow(
                                          color: Colors.white70,
                                          blurRadius: 10,
                                          spreadRadius: 0.5,
                                          offset: Offset(-2, -2),
                                        ),
                                      ],
                                      color: white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )
                                  ),

                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "The Berkley, Las Vegas ",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: MerriWeather),
                                          ),
                                          Text(
                                            "★ ★ ★ ★ (4)",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: MerriWeather),
                                          ),


                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: appAmberLight,
                                        ),


                                        // color: Colors.white,
                                        child:  Text(

                                          "\$ 200 ",


                                          textAlign: TextAlign.center ,
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: MerriWeather),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
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
