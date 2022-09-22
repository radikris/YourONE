import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yourone/features/search/presentation/home_swipe_card.dart';
import 'package:yourone/theme/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        //primarySwatch: AppColor.colorSwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeSwipeCard(),
    );
  }
}
