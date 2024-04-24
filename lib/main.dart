import 'package:flutter/material.dart';
import 'package:google/core/constants/colors/colors.dart';
import 'package:google/responsive/mobile_screen.dart';
import 'package:google/responsive/responsive_layout.dart';
import 'package:google/responsive/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayoutScreen(
        mobileLayout: MobileScreenLayout(),
        webLayout: WebScreenLayout(),
      ),
    );
  }
}
