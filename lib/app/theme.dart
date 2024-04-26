import 'package:flutter/material.dart';

//* Clase con la configuración del tema de la app, colores, fuentes...
class AppTheme {
  //* Theme material
  static ThemeData materialTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: colorBlue),
    fontFamily: 'Poppins',
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: colorWhite),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(fontSize: 20,color: colorBlack)
    )
  );

  //* Colors
  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color colorBlack = Color(0xFF111E21);
  static const Color colorBlackLight = Colors.black26;
  static const Color colorGrey = Colors.grey;
  static const Color colorBlue = Color.fromRGBO(106, 139, 244, 1);
  static const Color colorBackground = Color.fromRGBO(247, 246, 252, 1);
  static const Color colorOrangeLight = Color.fromARGB(255, 234, 230, 204);
  static const Color colorRed = Colors.red;
  static const Color colorGreen = Colors.green;
}
