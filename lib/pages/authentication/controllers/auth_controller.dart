import 'package:get/get.dart';

class AuthController extends GetxController {
  var visiblePass = false.obs;
  bool get isVisiblePass => this.visiblePass.value;
  bool changedVisiblePass() => this.visiblePass.value = !this.visiblePass.value;
}
