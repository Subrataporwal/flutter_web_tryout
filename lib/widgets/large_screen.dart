import 'package:flutter/material.dart';
import 'package:flutter_web_course/widgets/sideMenu/side_menu.dart';

class LargeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  LargeScreen(
    Key? key,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.redAccent,
          child: SideMenu(),
        )),
        const Expanded(
            flex: 5,
            child: Scaffold(
              backgroundColor: Colors.blueAccent,
            ))
      ],
    );
  }
}
