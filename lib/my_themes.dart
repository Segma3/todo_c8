import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static const Color lightColor = Color(0xFF5D9CEC);
  static const Color greenColor = Color(0xFF61E757);
  static const Color lightGreenColor = Color(0xFFDFECDB);
  static ThemeData lightTheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: lightColor,
        unselectedItemColor: Colors.grey.shade500,
      ),
      scaffoldBackgroundColor: lightGreenColor,
      primaryColor: lightColor,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.roboto(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      bodyMedium: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: lightColor,
        ),
      bodyLarge: GoogleFonts.poppins(
        fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),

    ),
    appBarTheme: AppBarTheme(
      backgroundColor: lightColor,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: Colors.white,
      )
    )
  );
  // static ThemeData darkTheme = ThemeData(
  //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //       backgroundColor: darkColor,
  //       type: BottomNavigationBarType.shifting,
  //       selectedItemColor: yellowColor,
  //       selectedLabelStyle: TextStyle(color: yellowColor),
  //       unselectedItemColor: Colors.white,
  //       unselectedLabelStyle: TextStyle(color: Colors.black),
  //     ),
  //     scaffoldBackgroundColor: Colors.transparent,
  //     primaryColor: darkColor,
  //     textTheme: TextTheme(
  //       bodySmall: GoogleFonts.elMessiri(
  //         fontSize: 20,
  //         fontWeight: FontWeight.bold,
  //         color: yellowColor,
  //       ),
  //       bodyMedium: GoogleFonts.elMessiri(
  //         fontSize: 25,
  //         fontWeight: FontWeight.bold,
  //         color: Colors.white,
  //       ),
  //       bodyLarge: GoogleFonts.elMessiri(
  //         fontSize: 30,
  //         fontWeight: FontWeight.bold,
  //         color: Colors.white,
  //       ),
  //     ),
  //     appBarTheme: AppBarTheme(
  //         backgroundColor: Colors.transparent,
  //         elevation: 0,
  //         centerTitle: true,
  //         iconTheme: IconThemeData(
  //           color: Colors.white,
  //         )));
}