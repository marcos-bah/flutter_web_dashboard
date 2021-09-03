import 'package:get/get.dart';

class AuthController extends GetxController {
  var visiblePass = false.obs;
  bool get isVisiblePass => this.visiblePass.value;
  bool changedVisiblePass() => this.visiblePass.value = !this.visiblePass.value;

  String? validateEmail(String? value) {
    if (!GetUtils.isEmail(value ?? "")) return "E-mail não é válido";
    return null;
  }

  String? validatePassword(String? value) {
    if (!GetUtils.isLengthGreaterOrEqual(value, 6))
      return "Senha inferior a 6 dígitos";
    return null;
  }
}
