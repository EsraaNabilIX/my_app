import 'package:flutter/material.dart';
import 'package:my_app/presentation/color_manger.dart';
import 'package:my_app/presentation/font_manger.dart';
import 'package:my_app/presentation/stayle_manger.dart';
import 'package:my_app/presentation/values_manger.dart';

ThemeData getAppLocationTheme() {
  return ThemeData(
    // main color
    primaryColor: ColorManger.primary,
    primaryColorLight: ColorManger.lightPrimary,
    primaryColorDark: ColorManger.darkPrimary,
    disabledColor: ColorManger.lightGrey,
    splashColor: ColorManger.lightPrimary,
    //cardTheme
    cardTheme: CardTheme(
        color: ColorManger.white,
        shadowColor: ColorManger.grey,
        elevation: AppSize.s4),
    //AppBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManger.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManger.lightPrimary,
      titleTextStyle: getRegularStyle(
        color: ColorManger.white,
        fontSize: FontSize.s16,
      ),
    ),
    //button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManger.lightGrey,
        buttonColor: ColorManger.primary,
        splashColor: ColorManger.lightPrimary),
    //elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManger.white, fontSize: FontSize.s17),
        primary: ColorManger.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    //TestTheme
    textTheme: TextTheme(
        displayLarge:
            getLightStyle(color: ColorManger.white, fontSize: FontSize.s22),
        headline1: getSemiBoldStyle(
            color: ColorManger.darkGrey, fontSize: FontSize.s16),
        subtitle1: getMediumStyle(
            color: ColorManger.lightGrey, fontSize: FontSize.s14),
        caption: getRegularStyle(
            color: ColorManger.darkGrey, fontSize: FontSize.s12),
        bodyText1: getRegularStyle(color: ColorManger.grey)),
  );
}
