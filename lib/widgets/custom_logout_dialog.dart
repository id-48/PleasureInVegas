//
// import 'package:extremedelta/di/locator.dart';
// import 'package:extremedelta/utils/color_utils.dart';
// import 'package:extremedelta/utils/strings.dart';
// import 'package:extremedelta/utils/utils.dart';
// import 'package:extremedelta/widgets/custom_button.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
//
//
// class CustomLogOutDialog extends HookConsumerWidget {
//
//   const CustomLogOutDialog({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//
//
//     return StatefulBuilder(builder: (context, setState) {
//       return Container(
//         width: double.infinity,
//         height: Utils.getHeight(context) * 0.2,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.white,
//         ),
//         child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//             child: Scaffold(
//               backgroundColor: Colors.white,
//               body: SingleChildScrollView(
//                 physics: const BouncingScrollPhysics(),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
//                   child: Center(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                           Text(
//                             "Are You Sure!",
//                             style: TextStyle(
//                                 color: Colors.red,
//                                 fontWeight: FontWeight.w900,
//                                 fontSize: 20),
//                           ),
//                         ],
//                     ),
//                   )
//                 ),
//               ),
//               bottomNavigationBar: Row(
//                 children: [
//                   Expanded(
//                     child: CustomButton(
//                       title: cancel.toUpperCase(),
//                       onPressed: () {
//                         navigationService.pop();
//                       },
//                     ),
//                   ),
//                   const Gap(8),
//                   Expanded(
//                     child: CustomButton(
//                       title: ok.toUpperCase(),
//                       onPressed: () async {
//                         navigationService.pop();
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             )
//         ),
//       );
//
//     }
//     );
//   }
// }
//
//
