import 'package:flutter/material.dart';

// class AppStyle {
//   static TextStyle styleRegular14(context) {
//     return TextStyle(
//       fontSize: getResponsiveFontSize(context, fontSize: 14),
//       color: const Color(0xff252525),
//       fontFamily: 'OpenSans',
//       fontWeight: FontWeight.w400,
//     );
//   }

class Appstyle {
  static TextStyle styleBold32(context) {
    return TextStyle(
        color: const Color(0xFFFFFFFF),
        fontSize: 32,
        fontFamily: 'Lato',
        fontWeight: FontWeight.bold);
  }

  static TextStyle styleRegular16(context) {
    return TextStyle(
        color: const Color(0xFFFFFFFF),
        fontFamily: 'Lato',
        fontSize: 16,
        fontWeight: FontWeight.w300);
  }

  static TextStyle stylefaint16(context) {
    return TextStyle(
        color: const Color(0xFFFFFFFF),
        fontFamily: 'Lato',
        fontSize: 16,
        fontWeight: FontWeight.w100);
  }

  //static TextStyle styleregula
  static TextStyle styletextField16(context) {
    return TextStyle(
        color: const Color(0xFF535353),
        fontSize: 16,
        fontWeight: FontWeight.w200,
        fontFamily: "Lato");
  }

  static TextStyle styleRegister12(context) {
    return TextStyle(
      fontSize: 12,
      fontFamily: "Lato",
      fontWeight: FontWeight.w100,
      color: const Color(0xFF535353),
    );
  }

  static TextStyle stylelittleLong12(context) {
    return TextStyle(
        fontSize: 12,
        fontFamily: "Lato",
        fontWeight: FontWeight.w300,
        color: Colors.white);
  }
}

Color AppPrimaryColor = const Color(0xFF8875FF);
Color borderColor = const Color(0xff979797);
