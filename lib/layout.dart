import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_web_course/helpers/responsiveness.dart';
import 'package:flutter_web_course/widgets/large_screen.dart';
import 'package:flutter_web_course/widgets/small_screen.dart';
import 'package:flutter_web_course/widgets/top_navBar.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
          child: Container(
            width: 300,
            child: const Text("Drawer"),
          ),
        ),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(key),
          smallScreen: SmallScreen(),
        ));
  }
}
