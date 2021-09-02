import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/app/app.dart';
import 'package:flutter_web_dashboard/controllers/menu_controller.dart';
import 'package:flutter_web_dashboard/controllers/navigation_controller.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  setPathUrlStrategy();
  runApp(AppWidget());
}
