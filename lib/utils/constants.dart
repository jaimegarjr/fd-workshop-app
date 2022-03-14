import 'package:flutter/material.dart';

// COLOR SCHEME
const Color kThemePrimaryColor = Color(0xFF2F5049);
const Color kThemeSecondaryColor = Color(0xFF4A7D72);
const Color kThemeBrightGreenColor = Color(0xFF84F287);
const Color kThemeLightGreenColor = Color(0xFFD6FCD8);
const Color kThemeOffWhiteColor = Color(0xFFFBFEFC);
const Color kThemeWhiteColor = Colors.white;

// TEXT STYLES
const TextStyle kSplashLogoText = TextStyle(
  fontSize: 36,
  fontFamily: 'Poppins',
  color: kThemePrimaryColor,
);

const TextStyle kToDoLogoText = TextStyle(
  fontSize: 18,
  fontFamily: 'Poppins',
  color: kThemePrimaryColor,
);

const TextStyle kToDoTodayText = TextStyle(
  fontSize: 30,
  fontFamily: 'Poppins',
  color: kThemePrimaryColor,
  fontWeight: FontWeight.w500,
);

const TextStyle kToDoListItemText = TextStyle(
  fontSize: 14,
  fontFamily: 'Lato',
  color: kThemePrimaryColor,
  fontWeight: FontWeight.w500,
);

TextStyle kCompleteListItemText = TextStyle(
  fontSize: 14,
  fontFamily: 'Lato',
  color: kThemePrimaryColor.withOpacity(0.5),
  fontWeight: FontWeight.w500,
);

TextStyle kAddToDoItemText = TextStyle(
  fontSize: 14,
  fontFamily: 'Lato',
  color: kThemePrimaryColor.withOpacity(0.5),
  fontWeight: FontWeight.w500,
);
