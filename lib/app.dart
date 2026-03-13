import 'package:ecommerce/pages/login_page.dart';
import 'package:ecommerce/themes/app_theme.dart';
import 'package:flutter/material.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: LoginPage(),
    );
  }
}