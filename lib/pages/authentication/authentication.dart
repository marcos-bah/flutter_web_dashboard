import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/authentication/controllers/auth_controller.dart';
import 'package:flutter_web_dashboard/pages/authentication/widgets/form_credential.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());
    print("build");
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: lightGrey,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: BoxConstraints(maxWidth: 300, maxHeight: 500),
          padding: EdgeInsets.all(24),
          child: AutofillGroup(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "Login",
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text: "Bem vindo de volta!",
                      color: lightGrey,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                FormCredentialInput(
                  label: "E-mail",
                  hint: "abc@domain.com",
                  fill: [AutofillHints.email],
                ),
                SizedBox(height: 15),
                Obx(
                  () => FormCredentialInput(
                    label: "Password",
                    hint: "*******",
                    fill: [AutofillHints.password],
                    obscure: !authController.isVisiblePass,
                    suffix: IconButton(
                      padding: EdgeInsets.only(right: 10),
                      icon: Icon(
                        !authController.isVisiblePass
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: lightGrey,
                      ),
                      onPressed: authController.changedVisiblePass,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        CustomText(
                          text: "Lembrar",
                          size: 14,
                        ),
                      ],
                    ),
                    CustomText(
                      text: "Esqueceu a senha?",
                      color: active,
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Get.offAllNamed(rootRoute);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: CustomText(
                      text: "Login",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Não possui uma conta? ",
                      ),
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                          color: active,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
