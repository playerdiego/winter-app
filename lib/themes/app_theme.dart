import 'package:flutter/material.dart';

class AppTheme {

  static const Color primaryColor = Color.fromRGBO(199, 144, 1, 1);
  static const Color secondaryGold = Color.fromRGBO(164, 144, 88, 1);

  static final ThemeData theme = ThemeData.dark().copyWith(

    scaffoldBackgroundColor: Colors.white,

    
    primaryColor: primaryColor,
    toggleableActiveColor: primaryColor

  );

}
