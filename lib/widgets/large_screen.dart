import 'package:flutter/material.dart';

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
        const Expanded(
            flex: 5,
            child: Scaffold(
              backgroundColor: Colors.blueAccent,
            ))
      ],
    );
  }
}
