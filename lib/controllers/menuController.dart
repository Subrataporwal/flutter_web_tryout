import 'package:flutter/material.dart';
import 'package:flutter_web_course/constants/styles.dart';
import 'package:flutter_web_course/routing/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overviewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) {
    activeItem.value == itemName;
  }

  isHovering(String itemName) {
    hoverItem.value == itemName;
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewPageRoute:
        return _customIcon(Icons.trending_up_rounded, itemName);
      case driverPageRoute:
        return _customIcon(Icons.drive_eta_rounded, itemName);
      case clientsPageRoute:
        return _customIcon(Icons.people_alt_rounded, itemName);
      case authPageRoute:
        return _customIcon(Icons.exit_to_app_rounded, itemName);

      default:
        return _customIcon(Icons.exit_to_app_rounded, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemname) {
    if (isActive(itemname)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }
    return Icon(icon, color: isHovering(itemname) ? dark : lightGrey);
  }
}
