import 'package:flutter/material.dart';

import '../color_utils.dart';

void showLoadingDialog({
  required BuildContext context,
  bool idShow = true,
}) {
  idShow
      ? Future.delayed(Duration(seconds: 0), () {
          showDialog(
              context: context,
              barrierColor: Colors.black.withOpacity(0.40),
              barrierDismissible:
                  true,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                );
              });
        })
      : print("");
}

void hideLoadingDialog({required BuildContext context}) {
  Navigator.pop(context, false);
}
