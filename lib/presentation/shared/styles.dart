import 'package:flutter/cupertino.dart';

class Styles {
  const Styles._();

  static const textRegular = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const textRegularBlack = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: CupertinoColors.black,
  );

  static TextStyle textSubtitleWithAlpha(int a) => TextStyle(
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: Color(int.parse('0x${a}000000')),
      );

  static const textSubtitle80 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: Color(0x80000000),
  );

  static const textBold = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static const textCartBuy = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: CupertinoColors.white,
  );

  static const textBold16 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const textBold18 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static const textBold20 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static const colorPrimary = Color(0xFF3364E0);

  static const colorBackground = Color(0xFFF8F7F5);

  static const colorCartButtons = Color(0xFFEFEEEC);
}
