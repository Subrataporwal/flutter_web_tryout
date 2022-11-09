import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_web_course/widgets/top_navBar.dart';

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
        )),
        Expanded(
            flex: 5,
            child: Scaffold(
              backgroundColor: Colors.blueAccent,
            ))
      ],
    );
  }
}
