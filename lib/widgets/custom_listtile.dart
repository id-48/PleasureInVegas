import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../utils/color_utils.dart';
import '../utils/extensions/size_extension.dart';
import '../utils/extensions/util_extension.dart';

@immutable
class CustomListTileCard extends StatelessWidget {
  final String? status;
  final List<String> keys;
  final List<String> values;
  final void Function()? ontap;
  // pass custom bottom widget
  final Widget? bottomWidget;
  final bool hideBottomBar;

  const CustomListTileCard({
    Key? key,
    this.status,
    this.ontap,
    this.bottomWidget,
    this.hideBottomBar = false,
    required this.keys,
    required this.values,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: context.constantSize(16.c, 18.c)),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.transparent, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: context.constantSize(
                  16.c,
                ),
                left: context.constantSize(16.c, 30.c, 40.c),
                right: context.constantSize(16.c, 30.c, 40.c)),
            child: ResponsiveGridRow(
                children: keys
                    .mapIndexed((int index, item) => ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: TextBox(
                        parentText: keys[index], childText: values[index])))
                    .toList()),
          ),
          if (!hideBottomBar)
            Container(
              decoration:  BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0)),
              ),
              padding: EdgeInsets.only(
                  top: context.constantSize(
                    9.c,
                  ),
                  bottom: context.constantSize(9.c),
                  left: context.constantSize(16.c, 30.c, 40.c),
                  right: context.constantSize(16.c, 30.c, 40.c)),
              child: bottomWidget ??
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...[
                        // Expanded(
                        //   child: Row(
                        //     children: [
                        //       Text('Status : ',
                        //           style: TextStyle(
                        //               fontWeight: FontWeight.bold,
                        //               color: primaryColor,
                        //               fontSize:
                        //               context.fontSize(14.c, 14.c, 16.c))),
                        //       Expanded(
                        //         child: Text(
                        //           status!,
                        //           style: TextStyle(overflow:  TextOverflow.ellipsis,
                        //               fontWeight: FontWeight.w400,
                        //               color: parisViolet,
                        //               fontSize:
                        //               context.fontSize(14.c, 14.c, 16.c)),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // )
                      ],
                      Expanded(
                        child:    Row(
                          children: [
                            if (context.isTablet) const Spacer(),
                            const Spacer(),
                            InkWell(
                                onTap: ontap,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            context.fontSize(12.c, 14.c, 16.c),
                                        color: Colors.white),
                                  ),
                                )),
                          ],
                        ) ,
                      )
                    ],
                  ),
            )
        ],
      ),
    );
  }
}


class TextBox extends StatelessWidget {
  final String parentText;
  final String? childText;

  const TextBox({Key? key, required this.parentText, this.childText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          parentText,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: context.fontSize(
                12.c, 12.c, 14.c,
                //  12.sp
              )),
        ),
        if (childText != null) Gap(4.c),
        if (childText != null)
          Text(
            childText!,
            style: TextStyle(
                color: Colors.black,
                fontSize: context.fontSize(
                  14.c,
                  14.c,
                  16.c,
                )),
          ),
        if (childText != null) Gap(14.c),
      ],
    );
  }
}

class CustomeRow extends StatelessWidget {
  final String? title;
  final String? value;
  final String? zem;

  const CustomeRow({Key? key,  this.title, this.value,this.zem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const Gap(8),
        Text(zem.toString()),
        const Gap(8),
        Text(
          value!,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        )
      ],);
  }
}