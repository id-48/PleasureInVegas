import 'package:flutter/material.dart';

import '../utils/color_utils.dart';


class AppColors {
  const AppColors({
    required this.primary,
    required this.accent,
    required this.text,
    required this.primaryButtonBackground,
    required this.primaryButtonText,
    required this.secondaryButtonBackground,
    required this.secondaryButtonBorder,
    required this.textfieldHint,
    required this.textfieldTitle,
    required this.checkBox,
    required this.background,
    required this.textfieldError,
    required this.textfieldText,
    required this.textfieldBorder,
    required this.textPurple,
    required this.unSelectedCheckBox,
    required this.itemSelected,
    required this.itemUnselected,
    required this.grayText,
    required this.cardBorder,
    required this.cardShadow,
    required this.textLightBlue,
    required this.textRedLight,
    required this.rightArrowColor,
  });

  factory AppColors.light() {
    return  AppColors(
        primary: tahitiGold,
        accent: deepSkyBlue,
        text: midnightBlue,
        background: white,
        textfieldHint: lavenderGrey,
        textfieldTitle: midnightBlue,
        primaryButtonBackground: tahitiGold,
        primaryButtonText: white,
        secondaryButtonBackground: white,
        checkBox: white,
        secondaryButtonBorder: tahitiGold,
        textfieldError: cinnabarRed,
        textfieldText: parisViolet,
        textfieldBorder: linkWater,
        textPurple: parisViolet,
        unSelectedCheckBox: linkWater,
        itemSelected: tahitiGold,
        itemUnselected: raven,
        grayText: raven,
        cardBorder: whiteSmoke,
        cardShadow: shadowColor,
        textLightBlue: wildBlueYonder,
        textRedLight: tahitiGold,
        rightArrowColor: deepSkyBlue);
  }

  factory AppColors.dark() {
    return const AppColors(
        primary: tahitiGold,
        accent: deepSkyBlue,
        text: midnightBlue,
        background: white,
        textfieldHint: lavenderGrey,
        textfieldTitle: midnightBlue,
        primaryButtonBackground: tahitiGold,
        primaryButtonText: white,
        secondaryButtonBackground: white,
        checkBox: white,
        secondaryButtonBorder: tahitiGold,
        textfieldError: cinnabarRed,
        textfieldText: parisViolet,
        textfieldBorder: linkWater,
        textPurple: parisViolet,
        unSelectedCheckBox: linkWater,
        itemSelected: tahitiGold,
        itemUnselected: raven,
        grayText: raven,
        cardBorder: whiteSmoke,
        cardShadow: shadowColor,
        textLightBlue: wildBlueYonder,
        textRedLight: tahitiGold,
        rightArrowColor: deepSkyBlue);
  }

  final Color background;

  // generic colors
  final Color primary;
  final Color accent;
  final Color text;
  final Color textPurple;
  final Color textLightBlue;
  final Color textRedLight;

  //component specific colors
  final Color primaryButtonBackground;
  final Color primaryButtonText;
  final Color secondaryButtonBackground;
  final Color secondaryButtonBorder;
  final Color textfieldHint;
  final Color textfieldTitle;
  final Color textfieldError;
  final Color textfieldText;
  final Color textfieldBorder;
  final Color checkBox;
  final Color unSelectedCheckBox;
  final Color itemSelected;
  final Color itemUnselected;
  final Color grayText;
  final Color cardBorder;
  final Color cardShadow;
  final Color rightArrowColor;
  //misc
}
