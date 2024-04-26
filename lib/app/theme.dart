import 'package:flutter/material.dart';

//* Clase con la configuración del tema de la app, colores, fuentes...
class AppTheme {
  //* Theme material
  static ThemeData materialTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFBDFFFF)),
    fontFamily: 'Poppins'
  );

  //* Colors
  static ColorScheme colorScheme = materialTheme.colorScheme;
  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color colorBlack = Color(0xFF111E21);
  static const Color colorGrey = Colors.grey;
  static const Color colorBlue = Color.fromRGBO(106, 139, 244, 1);
  static const Color colorBlackLight = Colors.black26;
  static const Color colorBlackIntermediate = Colors.black54;
  static const Color colorTransparent = Colors.transparent;
  static const Color colorBackground = Color.fromRGBO(247, 246, 252, 1);
  static const Color colorRed = Color(0xFFFF4949);
  static const Color colorPurpleLight = Color.fromARGB(255, 224, 204, 234);
  static const Color colorRedLight = Color.fromARGB(255, 234, 204, 204);
  static const Color colorGreenLight = Color.fromARGB(255, 214, 234, 204);
  static const Color colorOrangeLight = Color.fromARGB(255, 234, 230, 204);
  static Color colorYellow = Colors.yellow.shade800;

}
