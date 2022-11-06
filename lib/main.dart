import 'package:flutter/material.dart';
import 'package:flutter_web_course/layout.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        primarySwatch: Colors.blue,
        pageTransitionsTheme: const PageTransitionsTheme(builders:{
          TargetPlatform.iOS:const FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android:const FadeUpwardsPageTransitionsBuilder()
        } )
      ),
      home:  SiteLayout(),
    );
  }
}
