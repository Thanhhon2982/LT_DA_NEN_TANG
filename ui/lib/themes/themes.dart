import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/data/constants/app_colors.dart';
import 'package:ui/utils/utils.dart';
import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:flutter/material.dart';

part 'dark_theme.dart';
part 'light_theme.dart';

ThemeData get themeData => AppEnvironment.isDark
    ? _LightTheme.lightThemeData
    : _LightTheme.lightThemeData;
