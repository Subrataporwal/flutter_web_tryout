import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/controllers.dart';
import '../../constants/styles.dart';
import '../textWidget.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const HorizontalMenuItem(
      {super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? lightGrey.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController.isHovering(itemName) ||
                        menuController.isActive(itemName),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 6,
                      height: 54,
                      color: Primary.base,
                    ),
                  ),
                  SizedBox(width: _width / 88),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: menuController.returnIconFor(itemName),
                  ),
                  if (!menuController.isActive(itemName))
                    Flexible(
                        child: TextWidget(
                      text: itemName,
                      color: menuController.isHovering(itemName)
                          ? Theme.of(context).brightness == Brightness.light
                              ? Greyscale.k900
                              : Greyscale.k200
                          : Greyscale.k600,
                    ))
                  else
                    Flexible(
                        child: TextWidget(
                      text: itemName,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Greyscale.k900
                          : Greyscale.k50,
                      size: 18,
                      weight: FontWeight.bold,
                    ))
                ],
              ),
            )));
  }
}
