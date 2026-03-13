import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    //brightness: Brightness.light, // this is used to change the brightness of the app. it is used to set the color scheme of the app. it is passed as a parameter to the ThemeData constructor.
    primaryColor: Colors
        .blue, // this is used to change the primary color of the app which is used in the app bar and other widgets that use the primary color, primaryColor is a Color which is used to set the color of the app bar and other widgets that use the primary color. it is passed as a parameter to the ThemeData constructor.
    primarySwatch: Colors
        .blue, // this is used to change the primary swatch of the app which is used in the app bar and other widgets that use the primary swatch color, primarySwatch is a MaterialColor which is a map of colors that are used in the app. it is used to set the color of the app bar and other widgets that use the primary swatch color. it is passed as a parameter to the ThemeData constructor.
    //scaffoldBackgroundColor: Colors.grey[200], // this is used to change the background color of the scaffold
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors
            .blue, // this is used to change the background color of the button
        foregroundColor:
            Colors.white, // this is used to change the text color of the button
        shape: RoundedRectangleBorder(
          // this is used to change the shape of the button
          borderRadius: BorderRadius.circular(
            8,
          ), // this is used to make the button circular
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8,
        ), // this is used to make the text field circular
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8,
        ), // this is used to make the text field circular when it is focused
        borderSide: BorderSide(
          color: Colors.blue,
        ), // this is used to change the color of the border when it is focused
      ),
      hintStyle: TextStyle(
        color: Colors.grey, // this is used to change the color of the hint text
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the headline text
        fontSize:
            32, // this is used to change the font size of the headline text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the headline text
      ),
      headlineMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the headline text
        fontSize:
            24, // this is used to change the font size of the headline text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the headline text
      ),
      headlineSmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the headline text
        fontSize:
            18, // this is used to change the font size of the headline text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the headline text
      ),
      bodyLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the body text
        fontSize:
            16, // this is used to change the font size of the body text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the body text
      ),
      bodyMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the body text
        fontSize:
            14, // this is used to change the font size of the body text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the body text
      ),
      bodySmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the body text
        fontSize:
            12, // this is used to change the font size of the body text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the body text
      ),
      titleLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the title text
        fontSize:
            20, // this is used to change the font size of the title text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the title text
      ),
      titleMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the title text
        fontSize:
            18, // this is used to change the font size of the title text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the title text
      ),
      titleSmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the title text
        fontSize:
            16, // this is used to change the font size of the title text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the title text
      ),
      displayLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the display text
        fontSize:
            36, // this is used to change the font size of the display text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the display text
      ),
      displayMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the display text
        fontSize:
            30, // this is used to change the font size of the display text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the display text
      ),
      displaySmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the display text
        fontSize:
            24, // this is used to change the font size of the display text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the display text
      ),
      labelLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the label text
        fontSize:
            14, // this is used to change the font size of the label text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the label text
      ),
      labelMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the label text
        fontSize:
            12, // this is used to change the font size of the label text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the label text
      ),
      labelSmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the label text
        fontSize:
            10, // this is used to change the font size of the label text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the label text
      ),
    ),
  ); // this is used to set the theme of the app. ThemeData is a class that contains all the properties of the theme. it is used to set the colors, fonts, and other properties of the theme. it is passed as a parameter to the MaterialApp constructor.
  
  
  
  
  
  
  //------------------------------------dark theme------------------------------------
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors
        .blue, // this is used to change the primary color of the dark theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors
            .blue, // this is used to change the background color of the button
        foregroundColor:
            Colors.white, // this is used to change the text color of the button
        shape: RoundedRectangleBorder(
          // this is used to change the shape of the button
          borderRadius: BorderRadius.circular(
            8,
          ), // this is used to make the button circular
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8,
        ), // this is used to make the text field circular
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8,
        ), // this is used to make the text field circular when it is focused
        borderSide: BorderSide(
          color: Colors.blue,
        ), // this is used to change the color of the border when it is focused
      ),
      hintStyle: TextStyle(
        color: Colors.grey, // this is used to change the color of the hint text
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the headline text
        fontSize:
            32, // this is used to change the font size of the headline text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the headline text
      ),
      headlineMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the headline text
        fontSize:
            24, // this is used to change the font size of the headline text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the headline text
      ),
      headlineSmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the headline text
        fontSize:
            18, // this is used to change the font size of the headline text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the headline text
      ),
      bodyLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the body text
        fontSize:
            16, // this is used to change the font size of the body text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the body text
      ),
      bodyMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the body text
        fontSize:
            14, // this is used to change the font size of the body text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the body text
      ),
      bodySmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the body text
        fontSize:
            12, // this is used to change the font size of the body text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the body text
      ),
      titleLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the title text
        fontSize:
            20, // this is used to change the font size of the title text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the title text
      ),
      titleMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the title text
        fontSize:
            18, // this is used to change the font size of the title text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the title text
      ),
      titleSmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the title text
        fontSize:
            16, // this is used to change the font size of the title text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the title text
      ),
      displayLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the display text
        fontSize:
            36, // this is used to change the font size of the display text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the display text
      ),
      displayMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the display text
        fontSize:
            30, // this is used to change the font size of the display text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the display text
      ),
      displaySmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the display text
        fontSize:
            24, // this is used to change the font size of the display text
        fontWeight: FontWeight
            .bold, // this is used to change the font weight of the display text
      ),
      labelLarge: TextStyle(
        //color: Colors.black, // this is used to change the color of the label text
        fontSize:
            14, // this is used to change the font size of the label text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the label text
      ),
      labelMedium: TextStyle(
        //color: Colors.black, // this is used to change the color of the label text
        fontSize:
            12, // this is used to change the font size of the label text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the label text
      ),
      labelSmall: TextStyle(
        //color: Colors.black, // this is used to change the color of the label text
        fontSize:
            10, // this is used to change the font size of the label text
        fontWeight: FontWeight
            .normal, // this is used to change the font weight of the label text
      ),
    ),
  );
}
