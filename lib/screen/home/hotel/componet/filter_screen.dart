import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/utils/color_utils.dart';
import 'package:pleasure_in_vegas/utils/strings.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';
import 'package:pleasure_in_vegas/widgets/custom_appbar.dart';
import 'package:pleasure_in_vegas/widgets/custom_button.dart';
import 'package:pleasure_in_vegas/widgets/custom_card.dart';

class FilterScreen extends HookConsumerWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isCheck = useState<bool>(false);
    final currentSliderValue = useState<double>(20);

    List<String> ratingList = ["5", "4", "3", "2", "1"];
    final ratingIndex = useState<int>(-1);
    final isRatingCheck = useState<bool>(false);
    // List<String> propertyList = [ "Fitness Center" , "Golf", "Indoor Pool", "Valet Parking" ,"ATM"];

    List<Map<String, dynamic>> propertyList = [
      {"title": "Fitness Center", "check": false},
      {"title": "Golf", "check": false},
      {"title": "Indoor Pool ", "check": false},
      {"title": "Valet Parking", "check": false},
      {"title": "ATM", "check": false},
    ];

    final propertyIndex = useState<int>(0);
    final isPropertyCheck = useState<List<bool>>([false]);

    // List<String> roomAmenitiesList = [ "Cable Tv" , "AC", "Bathrobes", "WI-FI" ];
    List<Map<String, dynamic>> roomAmenitiesList = [
      {"title": "Cable Tv", "check": false},
      {"title": "AC", "check": false},
      {"title": "Bathrobes ", "check": false},
      {"title": "WI-FI", "check": false},
    ];
    final roomAIndex = useState<int>(0);
    final isRoomACheck = useState<List<bool>>([false]);

    return Scaffold(
        appBar: CustomAppBar(
          isBack: true,
          isCart: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Filters :",
                        style: TextStyle(
                            fontFamily: MerriWeather,
                            color: black,
                            fontSize: 14)),

                    CustomButton(title: "Apply", radius: 8 ,fontSize: 12.sp,paddingHorizontal: 10,)
                  ],
                ),
                Slider(
                  value: currentSliderValue.value,
                  max: 1600,
                  divisions: 16,
                  thumbColor: white,
                  activeColor: primaryColor,
                  inactiveColor: primaryColor.withOpacity(0.5),
                  label: currentSliderValue.value.round().toString(),
                  onChanged: (double value) {
                    currentSliderValue.value = value;
                  },
                ),
                const SizedBox(height: 20),
                Text("\$${double.parse( currentSliderValue.value.toStringAsFixed(2))} ",
                    style: const TextStyle(
                        fontFamily: MerriWeather, color: black, fontSize: 14)),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomCard(

                          radius: 8,
                          color: primaryColor,
                          child:    Utils.regularSubHeadingText(text:  "Star Rating" ,textColor: white)
                      ),


                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: primaryColor,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: ratingList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              ratingIndex.value = index;
                              print("cehehe ${isRatingCheck.value}");
                              isRatingCheck.value = true;
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              // padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: primaryColor, width: 2)),
                              child: ratingIndex.value == index
                                  ? Icon(Icons.check,
                                      color: isRatingCheck.value
                                          ? primaryColor
                                          : Colors.transparent)
                                  : const SizedBox(),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            ratingList[index],
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontFamily: MerriWeather,
                                color: black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          )
                        ],
                      ),
                    );
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomCard(

                          radius: 8,
                          color: primaryColor,
                          child:    Utils.regularSubHeadingText(text:  "Property Features" ,textColor: white)
                      ),


                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: primaryColor,
                ),
                StatefulBuilder(builder: (context, setState) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: propertyList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                propertyIndex.value = index;

                                print("cehehe ${propertyList[index]["check"]}");

                                // propertyList[index]["check"]  =  propertyList[index]["check"] == true ? false : true ;
                                propertyList[index]["check"] == false
                                    ? true
                                    : false;
                                print("cehehe ${propertyList[index]["check"]}");

                                setState(() {});
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                // padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: primaryColor, width: 2)),
                                child: Icon(Icons.check,
                                    color: propertyList[index]["check"] == true
                                        ? primaryColor
                                        : Colors.transparent),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              propertyList[index]["title"],
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontFamily: MerriWeather,
                                  color: black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }),
                Row(
                  children: [
                    Expanded(
                      child: CustomCard(

                          radius: 8,
                          color: primaryColor,
                          child:    Utils.regularSubHeadingText(text:  "Room Amenities" ,textColor: white)
                      ),


                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: primaryColor,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: roomAmenitiesList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              roomAIndex.value = index;
                              print("cehehe ${isRoomACheck.value}");
                              roomAmenitiesList[index]["check"] =
                                  !roomAmenitiesList[index]["check"];
                              // isRoomACheck.value[index] = !isRoomACheck.value[index]  ;
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              // padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: primaryColor, width: 2)),
                              child: Icon(Icons.check,
                                  color:
                                      roomAmenitiesList[index]["check"] == true
                                          ? primaryColor
                                          : Colors.transparent),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            roomAmenitiesList[index]["title"],
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontFamily: MerriWeather,
                                color: black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
