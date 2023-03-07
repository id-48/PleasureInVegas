import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_appbar.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';
import 'package:pleasure_in_vegas/widgets/custom_card.dart';

class SearchHotelScreen extends HookConsumerWidget {
  const SearchHotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TabController? tabController;

    return Scaffold(
      appBar:  CustomAppBar (
        title: "Hotels",
        isBack: true,
        isCart: false,


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
                  color: primaryColor,
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
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemBuilder: (BuildContext context, int index) {
                      return CustomCard(
                       radius: 10,
                        padding: 0,
                        margin: EdgeInsets.symmetric(vertical: 10),
                      
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
                                width: 330,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16),
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
                                  CustomButton(title: "\$ 200 ",
                                    radius: 8,
                                  onPressed: (){},
                                  paddingHorizontal: 10,
                                  fontSize: 14.sp,)

                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),

                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemBuilder: (BuildContext context, int index) {
                      return CustomCard(
                        radius: 10,
                        padding: 0,
                        margin: EdgeInsets.symmetric(vertical: 10),

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
                                width: 330,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16),
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
                                  CustomButton(title: "\$ 200 ",
                                    radius: 8,
                                    onPressed: (){},
                                    paddingHorizontal: 10,
                                    fontSize: 14.sp,)

                                ],
                              ),
                            )
                          ],
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
