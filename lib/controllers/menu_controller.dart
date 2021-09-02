import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverViewPageDisplay.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    print(itemName);
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageDisplay:
        return _customIcon(Icons.trending_up, itemName);

      case DriversPageDisplay:
        return _customIcon(Icons.drive_eta, itemName);

      case ClientsPageDisplay:
        return _customIcon(Icons.people_alt_outlined, itemName);

      case AuthenticationPageDisplay:
        return _customIcon(Icons.exit_to_app, itemName);

      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, color: dark, size: 22);
    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}
