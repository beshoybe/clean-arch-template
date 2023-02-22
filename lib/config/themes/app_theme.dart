import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackGround,
    primaryColor: AppColors.primary,
    textTheme: Typography.englishLike2018.apply(
      fontSizeFactor: 1,
    ),
    appBarTheme: AppBarTheme(elevation: 0, backgroundColor: AppColors.primary),
  );
}
