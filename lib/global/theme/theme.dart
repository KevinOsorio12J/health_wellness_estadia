import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paciente_medico_app/global/globals.dart';
import 'package:paciente_medico_app/services/services.dart';

class ThemeChangerProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeChangerProvider({required bool isDarkmode})
      : currentTheme = isDarkmode
            ? CusttomGlobalTheme().darkTheme
            : CusttomGlobalTheme().lightTheme;

  setLightMode() {
    Preferences.isDarkMode = false;
    currentTheme = CusttomGlobalTheme().lightTheme;
    notifyListeners();
  }

  setDarkMode() {
    Preferences.isDarkMode = true;
    currentTheme = CusttomGlobalTheme().darkTheme;
    notifyListeners();
  }
}

class CusttomGlobalTheme {
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    // primaryColor: Color(0xFF006C47),
    // primaryColorLight: Color(0xFF89F8C0),
    // primaryColorDark: Color(0xFF002113),
    // scrollbarTheme: ScrollbarThemeData(
    //     thumbColor: MaterialStateProperty.all<Color>(Colors.white60)),
    colorScheme: const ColorScheme(
      brightness: LightColorScheme.brightness,
      primary: LightColorScheme.primary,
      onPrimary: LightColorScheme.onPrimary,
      primaryContainer: LightColorScheme.primaryContainer,
      onPrimaryContainer: LightColorScheme.onPrimaryContainer,
      secondary: LightColorScheme.secondary,
      onSecondary: LightColorScheme.onSecondary,
      secondaryContainer: LightColorScheme.secondaryContainer,
      onSecondaryContainer: LightColorScheme.onSecondaryContainer,
      tertiary: LightColorScheme.tertiary,
      onTertiary: LightColorScheme.onTertiary,
      tertiaryContainer: LightColorScheme.tertiaryContainer,
      onTertiaryContainer: LightColorScheme.onTertiaryContainer,
      error: LightColorScheme.error,
      errorContainer: LightColorScheme.errorContainer,
      onError: LightColorScheme.onError,
      onErrorContainer: LightColorScheme.onErrorContainer,
      background: LightColorScheme.background,
      onBackground: LightColorScheme.onBackground,
      surface: LightColorScheme.surface,
      onSurface: LightColorScheme.onSurface,
      surfaceVariant: LightColorScheme.surfaceVariant,
      onSurfaceVariant: LightColorScheme.onSurfaceVariant,
      outline: LightColorScheme.outline,
      onInverseSurface: LightColorScheme.onInverseSurface,
      inverseSurface: LightColorScheme.inverseSurface,
      inversePrimary: LightColorScheme.inversePrimary,
      shadow: LightColorScheme.shadow,
      surfaceTint: LightColorScheme.surfaceTint,
    ),
    iconTheme: IconThemeData(color: LightColorScheme.onSecondary),
    switchTheme: SwitchThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
    // scrollbarTheme: ScrollbarThemeData(
    //     thumbColor: MaterialStateProperty.all<Color>(Colors.black54)),
    // dataTableTheme: DataTableThemeData(
    //   headingRowHeight: 35,
    //   dataRowHeight: 35,
    //   columnSpacing: 0,
    //   horizontalMargin: 10,
    //   // headingRowColor: MaterialStateProperty.all<Color>(Constants.secondaryColor),
    //   // dataRowColor:
    //   //     MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
    //   //   if (states.contains(MaterialState.hovered)) {
    //   //     return Constants.primaryColor.withOpacity(0.2);
    //   //   }
    //   //   return null; // Use the default value.
    //   // }),
    // ),
    // appBarTheme: const AppBarTheme(backgroundColor: Colors.white70),
    // drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
    // scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 2,
          backgroundColor: LightColorScheme.primary,
          foregroundColor: LightColorScheme.onPrimary,
          shape: const StadiumBorder(),
          shadowColor: LightColorScheme.shadow),
    ),
    // listTileTheme: ListTileThemeData(
    //     selectedTileColor: Constants.primaryLightColor
    //         .withOpacity(Constants.colortercearyOpacity)),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //     style: OutlinedButton.styleFrom(
    //   backgroundColor:
    //       Constants.primaryLightColor.withOpacity(Constants.colorPrimaryOpacity),
    //   // padding: const EdgeInsets.symmetric(
    //   //     horizontal: Constants.primaryPanding,
    //   //     vertical: Constants.primaryPanding),
    // )),

    cardTheme: const CardTheme(
        clipBehavior: Clip.antiAlias, color: Color(0xffF7F7F7), elevation: 2),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: LightColorScheme.background,
      // iconColor: Constants.primaryColor,
      // prefixIconColor: Constants.primaryColor,
      // hintStyle: const TextStyle(fontSize: Constants.textFontSizeH2),
      // isDense: true,
      contentPadding: EdgeInsets.symmetric(
          horizontal: Constants.primaryPanding / 2,
          vertical: Constants.primaryPanding / 2),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        borderSide: BorderSide.none,
      ),
    ),

    textTheme: TextTheme(
      headline1: GoogleFonts.lato(
          fontSize: 77, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline2: GoogleFonts.lato(
          fontSize: 48.8, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      headline3: GoogleFonts.lato(fontSize: 38.4, fontWeight: FontWeight.w400),
      headline4: GoogleFonts.lato(
          fontSize: 27, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5: GoogleFonts.lato(fontSize: 19.2, fontWeight: FontWeight.w400),
      headline6: GoogleFonts.lato(
          fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      subtitle1: GoogleFonts.lato(
          fontSize: 12.8, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      subtitle2: GoogleFonts.lato(
          fontSize: 11.2, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyText1: GoogleFonts.lato(
          fontSize: 12.8, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyText2: GoogleFonts.lato(
          fontSize: 11.2, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      button: GoogleFonts.lato(
          fontSize: 11.2, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      caption: GoogleFonts.lato(
          fontSize: 9.6, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.lato(
          fontSize: 8, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    ),

    // tabBarTheme: TabBarTheme(
    //   unselectedLabelColor: Colors.grey,
    //   unselectedLabelStyle: GoogleFonts.lato(
    //     fontSize: 16,
    //     fontWeight: FontWeight.w400,
    //     letterSpacing: 0.5,
    //   ),
    //   labelColor: Colors.blue,
    //   labelStyle: GoogleFonts.lato(
    //     fontSize: 16,
    //     fontWeight: FontWeight.w400,
    //     letterSpacing: 0.5,
    //   ),
    //   indicator: const BoxDecoration(
    //       border: Border(
    //           bottom: BorderSide(
    //     color: Colors.blue,
    //     width: 2,
    //   ))),
    // ),
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   backgroundColor: Colors.blue,
    //   foregroundColor: Colors.white,
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    //   hoverColor: Colors.white54,
    //   splashColor: Colors.white54,
    // ),
    // primarySwatch: Colors.blue,
  );

// Dark
  ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(Colors.white60)),
      colorScheme: const ColorScheme(
        brightness: DarkColorScheme.brightness,
        primary: DarkColorScheme.primary,
        onPrimary: DarkColorScheme.onPrimary,
        primaryContainer: DarkColorScheme.primaryContainer,
        onPrimaryContainer: DarkColorScheme.onPrimaryContainer,
        secondary: DarkColorScheme.secondary,
        onSecondary: DarkColorScheme.onSecondary,
        secondaryContainer: DarkColorScheme.secondaryContainer,
        onSecondaryContainer: DarkColorScheme.onSecondaryContainer,
        tertiary: DarkColorScheme.tertiary,
        onTertiary: DarkColorScheme.onTertiary,
        tertiaryContainer: DarkColorScheme.tertiaryContainer,
        onTertiaryContainer: DarkColorScheme.onTertiaryContainer,
        error: DarkColorScheme.error,
        errorContainer: DarkColorScheme.errorContainer,
        onError: DarkColorScheme.onError,
        onErrorContainer: DarkColorScheme.onErrorContainer,
        background: DarkColorScheme.background,
        onBackground: DarkColorScheme.onBackground,
        surface: DarkColorScheme.surface,
        onSurface: DarkColorScheme.onSurface,
        surfaceVariant: DarkColorScheme.surfaceVariant,
        onSurfaceVariant: DarkColorScheme.onSurfaceVariant,
        outline: DarkColorScheme.outline,
        onInverseSurface: DarkColorScheme.onInverseSurface,
        inverseSurface: DarkColorScheme.inverseSurface,
        inversePrimary: DarkColorScheme.inversePrimary,
        shadow: DarkColorScheme.shadow,
        surfaceTint: DarkColorScheme.surfaceTint,
      ),
      // dataTableTheme: DataTableThemeData(
      //   headingRowHeight: 35,
      //   dataRowHeight: 35,
      //   columnSpacing: 0,
      //   horizontalMargin: 10,
      //   // headingRowColor:
      //   //     MaterialStateProperty.all<Color>(Constants.secondaryColor),
      //   // dataRowColor: MaterialStateProperty.resolveWith<Color?>(
      //   //     (Set<MaterialState> states) {
      //   //   if (states.contains(MaterialState.hovered)) {
      //   //     return Constants.primaryColor.withOpacity(0.2);
      //   //   }
      //   //   return null; // Use the default value.
      //   // }),
      // ),
      // primaryColor: Constants.tercearyColor,
      // appBarTheme: AppBarTheme(backgroundColor: Colors.black.withOpacity(0.01)),
      // drawerTheme:
      //     DrawerThemeData(backgroundColor: Colors.black.withOpacity(0.01)),
      // scaffoldBackgroundColor: Colors.black.withOpacity(0.80),
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //     elevation: 0,
      //     primary: Constants.primaryColor,
      //     shape: const StadiumBorder(),
      //     // maximumSize: const Size(double.infinity, 56),
      //     // minimumSize: const Size(double.infinity, 56),
      //   ),
      // ),
      // listTileTheme: ListTileThemeData(
      //     selectedTileColor: Constants.hoverColorPrimary
      //         .withOpacity(Constants.hoverColorPrimaryOpacity),
      //     selectedColor: Colors.white),
      // outlinedButtonTheme: OutlinedButtonThemeData(
      //     style: OutlinedButton.styleFrom(
      //   backgroundColor: Constants.primaryLightColor
      //       .withOpacity(Constants.colorSecundaryOpacity),
      //   // padding: const EdgeInsets.symmetric(
      //   //     horizontal: Constants.primaryPanding,
      //   //     vertical: Constants.primaryPanding),
      // )),
      cardTheme: const CardTheme(clipBehavior: Clip.antiAlias),
      // inputDecorationTheme: InputDecorationTheme(
      //   isDense: true,
      //   hintStyle: const TextStyle(fontSize: Constants.textFontSizeH2),
      //   filled: true,
      //   // fillColor: Constants.primaryLightColor
      //   //     .withOpacity(Constants.colortercearyOpacity),
      //   // iconColor: Constants.primaryColor,
      //   prefixIconColor: Colors.white60,
      //   contentPadding: const EdgeInsets.symmetric(
      //       horizontal: Constants.primaryPanding,
      //       vertical: Constants.primaryPanding),
      //   border: const OutlineInputBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(30)),
      //     borderSide: BorderSide.none,
      //   ),
      // ),
      textTheme: TextTheme(
        headline1: GoogleFonts.lato(
            fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        headline2: GoogleFonts.lato(
            fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        headline3: GoogleFonts.lato(fontSize: 48, fontWeight: FontWeight.w400),
        headline4: GoogleFonts.lato(
            fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        headline5: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.w400),
        headline6: GoogleFonts.lato(
            fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
        subtitle1: GoogleFonts.lato(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        subtitle2: GoogleFonts.lato(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        bodyText1: GoogleFonts.lato(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
        bodyText2: GoogleFonts.lato(
            fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        button: GoogleFonts.lato(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        caption: GoogleFonts.lato(
            fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        overline: GoogleFonts.lato(
            fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
      ));
}
