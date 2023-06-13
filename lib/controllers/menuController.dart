import 'package:flutter/material.dart';
import 'package:flutter_web_course/constants/styles.dart';
import 'package:flutter_web_course/routing/routes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = myAppsDisplayName.obs;
  var hoverItem = ''.obs;

  chnageActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case myAppsDisplayName:
        return _customIcon(Iconsax.category5, Iconsax.category, itemName);
      case appCollectionsDisplayName:
        return _customIcon(Iconsax.mobile5, Iconsax.mobile, itemName);
      case resourcesDisplayName:
        return _customIcon(Iconsax.note_text5, Iconsax.note_text, itemName);
      case feedbackPageDisplayName:
        return _customIcon(
            Iconsax.message_text_15, Iconsax.message_text, itemName);

      default:
        return _customIcon(
            Iconsax.message_text_15, Iconsax.message_text, itemName);
    }
  }

  Widget _customIcon(IconData iconBold, IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        iconBold,
        // size: 22,
        color: Primary.base,
      );
    }
    return Icon(
      icon,
      color: isHovering(itemName) ? Primary.base : Greyscale.k600,
    );
  }
}
