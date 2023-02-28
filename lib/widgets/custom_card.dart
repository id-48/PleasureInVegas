

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pleasure_in_vegas/utils/utils.dart';

class CustomCard extends StatelessWidget {
  final String mainText;
  final String subText;
  final String image;

  const CustomCard({
    Key? key,
    required this.mainText,
    required this.subText,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: Utils.getWidth(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Utils.boldSubHeadingText(
                  text: mainText,
                  textColor: Colors.red,
                  textSize: 20,
                ),
                const Gap(10),
                Utils.boldBodyText(
                  text: subText,
                  textColor: Colors.black,
                  textSize: 17,
                ),
              ],
            ),
          ),
          const Gap(20),
          Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(image),
          ),
        ],
      ),
    );
  }
}
