import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';

class ThemeController {
  static ThemeData lightTheme() {
    final ThemeData base = ThemeData.light();
    Color textColor = Colors.black;

    TextTheme buildTextThemeLight(TextTheme base) {
      return base.copyWith(
        headlineSmall: base.headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold, color: textColor),
       headlineMedium: base.headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold, color: textColor),
        titleSmall: base.titleSmall
            ?.copyWith(fontWeight: FontWeight.bold, color: textColor),
        titleMedium: base.titleMedium
            ?.copyWith(fontWeight: FontWeight.w700, color: textColor),

        bodySmall: base.bodySmall
            ?.copyWith( color: textColor),
             bodyMedium: base.bodyMedium
            ?.copyWith(fontWeight: FontWeight.w700, color: textColor),
       displayMedium: base.displayMedium
            ?.copyWith(fontWeight: FontWeight.bold, color: textColor),
      );
    }

    return base.copyWith(
        primaryColor: Colors.red,
        indicatorColor: Colors.white,
        dividerColor: AppColor.lightDivider,
        scaffoldBackgroundColor: AppColor.whiteLightest,
        cardColor: AppColor.lightError,
        appBarTheme: base.appBarTheme.copyWith(
            color: AppColor.whiteLightest,
            elevation: 0,
            titleTextStyle: base.textTheme.titleSmall!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            iconTheme: const IconThemeData(color: AppColor.black)),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: AppColor.black),
        dialogTheme: base.dialogTheme.copyWith(
          backgroundColor: Colors.black.withOpacity(0.8),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppColor.blue),
            overlayColor:
                MaterialStateProperty.all(ThemeData.dark().splashColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(base.splashColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            side: MaterialStateProperty.all<BorderSide>(
                const BorderSide(color: AppColor.blackLight)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppColor.black),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.29),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          ),
        ),
        inputDecorationTheme: base.inputDecorationTheme.copyWith(
          border: InputBorder.none,
          isDense: true,
          filled: true,
          fillColor: const Color(0xFFF1F1F1),
          hintStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.blackLight),
        ),
        cardTheme: CardTheme(
          color: const Color(0xfffcfcfc),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
          elevation: 10,
          shadowColor: const Color(0xff000000).withOpacity(0.25),
        ),
        textTheme: buildTextThemeLight(base.textTheme));
  }

  static ThemeData darkTheme() {
    final ThemeData base = ThemeData.dark();
       Color textColor = Colors.black;

    TextTheme buildTextThemeDark(TextTheme base) {
      return base.copyWith(
         headlineSmall: base.headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold, color: textColor),
       headlineMedium: base.headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold, color: textColor),
        titleSmall: base.titleSmall
            ?.copyWith(fontWeight: FontWeight.bold, color: textColor),
        titleMedium: base.titleMedium
            ?.copyWith(fontWeight: FontWeight.w700, color: textColor),

        bodySmall: base.bodySmall
            ?.copyWith( color: textColor),
             bodyMedium: base.bodyMedium
            ?.copyWith(fontWeight: FontWeight.w700, color: textColor),
       displayMedium: base.displayMedium
            ?.copyWith(fontWeight: FontWeight.bold, color: textColor),
      );
    }

    return base.copyWith(
        primaryColor: Colors.indigoAccent,
        indicatorColor: Colors.black,
        dividerColor: AppColor.darkDivider,
        appBarTheme: base.appBarTheme.copyWith(color: const Color(0xff000000)),
        // scaffoldBackgroundColor: Color(0xff232323),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: AppColor.white),
        dialogTheme: base.dialogTheme.copyWith(
          backgroundColor: Colors.white.withOpacity(0.8),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColor.whiteLight),
            overlayColor:
                MaterialStateProperty.all(ThemeData.light().splashColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(base.splashColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            side: MaterialStateProperty.all<BorderSide>(
                const BorderSide(color: AppColor.whiteLight)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppColor.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.29),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          ),
        ),
        inputDecorationTheme: base.inputDecorationTheme.copyWith(
            border: InputBorder.none,
            isDense: true,
            filled: true,
            fillColor: const Color(0xFF434343),
            hintStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColor.whiteLight)),
        cardTheme: CardTheme(
          color: const Color(0xff000000),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
          elevation: 10,
          shadowColor: const Color(0xff000000).withOpacity(0.25),
        ),
        textTheme: buildTextThemeDark(base.textTheme));
  }
}
