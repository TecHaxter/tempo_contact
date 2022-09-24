import 'package:tempo_contacts/data/constants/app_colors.dart';
import 'package:tempo_contacts/utils/utils.dart';
import 'package:flutter/material.dart';

part 'dark_theme.dart';
part 'light_theme.dart';

ThemeData get themeData => AppEnvironment.isDark
    ? _LightTheme.lightThemeData
    : _LightTheme.lightThemeData;
