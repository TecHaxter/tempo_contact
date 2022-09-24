part of 'themes.dart';

class _LightTheme {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Gilroy',
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.darkBlueAccent,
      secondary: AppColors.lightRedAccent,
    ),
    toggleableActiveColor: AppColors.darkBlueAccent,
    appBarTheme: AppBarTheme(color: AppColors.lightBackground),
    scaffoldBackgroundColor: AppColors.lightBackground,
    errorColor: AppColors.lightRedAccent,
    focusColor: AppColors.lightGreenAccent,
    hoverColor: AppColors.lightBlueAccent,
    disabledColor: AppColors.lightGray,
    primaryColorLight: AppColors.lightBackground,
    backgroundColor: AppColors.lightBackground,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.lightBlueAccent),
    ),
  );
}
