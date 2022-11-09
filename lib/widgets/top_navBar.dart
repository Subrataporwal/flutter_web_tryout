import 'package:flutter/material.dart';
import 'package:flutter_web_course/constants/styles.dart';
import 'package:flutter_web_course/helpers/responsiveness.dart';
import 'package:flutter_web_course/widgets/textWidget.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      iconTheme: const IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      "assets/icons/logo.png",
                    ),
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: dark,
              ),
            ),
      title: Row(
        children: [
          const Visibility(
            child: TextWidget(
              text: "Dashboard",
              weight: FontWeight.bold,
              size: 26,
              color: lightGrey,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: dark.withOpacity(.7),
              )),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: dark.withOpacity(.7),
                  )),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: active,
                        border: Border.all(color: lightGrey, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                  )),
            ],
          ),
          Container(
            width: 1,
            height: 2,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          const TextWidget(
            text: "Subrata Porwal",
            color: lightGrey,
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                  backgroundColor: light,
                  child: Icon(
                    Icons.person_outline,
                    color: dark,
                  )),
            ),
          )
        ],
      ),
    );
