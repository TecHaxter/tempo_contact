part of 'themes.dart';

class _DarkTheme {
  // ignore: unused_field
  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Gilroy',
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.darkBlueAccent,
      secondary: AppColors.lightRedAccent,
    ),
    toggleableActiveColor: AppColors.darkBlueAccent,
    appBarTheme: AppBarTheme(color: AppColors.darkBackground),
    scaffoldBackgroundColor: AppColors.darkBackground,
    errorColor: AppColors.lightRedAccent,
    focusColor: AppColors.lightGreenAccent,
    hoverColor: AppColors.lightBlueAccent,
    disabledColor: AppColors.lightGray,
    primaryColorLight: AppColors.darkBackground,
    backgroundColor: AppColors.darkBackground,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.lightBlueAccent),
    ),
  );
}
