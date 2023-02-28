import 'package:flutter/material.dart';

const int tempProposalId = 32;

late Size screenSize;

bool isEnable = true;

void getScreenSize(BuildContext context) {
  screenSize = MediaQuery.of(context).size;
}


class UserRole {
  static String admin = "admin";
  static String subUser = "subUser";
}



class DrawerItem {
  static String home  = "Home";
  static String createSubUser  = "Create Sub User";
  static String  unitMaster = "Unit Master";
  static String itemMaster  = "Item Master";
  static String  inventoryMaster = "Inventory Master";
  static String kitchenMaster  = "Kitchen Master";
  static String takingToKitchen  = "Taking To Kitchen";
  static String usedOverList  = "Used Over List";
  static String sales  = "Sales";
  static String  logout = "Logout";
}


//AppBar size
const double kAppBarSize = 48.0;
const double kAppBarSizeTablet = 55.0;
const double appBarElevation = 4;

const double webRightSpace = 0.2;
const double webLeftSpace = 0.18;
const double webOpenDrawerSize = 0.13;
const double webCloseDrawerSize = 0.06;

//Divider
divider({endIndent = 18.0, indent = 18.0, height = 16.0}) {
  return Divider(
    height: height,
    thickness: 1,
    endIndent: endIndent,
    indent: indent,
  );
}


