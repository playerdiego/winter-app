import 'package:flutter/material.dart';
import 'package:winter_app/themes/app_theme.dart';

class ColorDividers {

  static final blackWhite = Column(
    children: [
      Container(
        width: double.infinity,
        height: 7,
        color: Colors.white,
      ),
      Container(
        width: double.infinity,
        height: 5,
        color: Colors.black,
      ),
      Container(
        width: double.infinity,
        height: 1,
        color: Colors.white,
      ),
    ],
  );

  static final gold = Column(
    children: [
      Container(
        width: double.infinity,
        height: 7,
        color: AppTheme.secondaryGold,
      ),
      Container(
        width: double.infinity,
        height: 5,
        color: AppTheme.primaryColor,
      ),
    ],
  );

}