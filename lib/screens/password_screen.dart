import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validate_password/controllers/password_controller.dart';
import 'package:validate_password/screens/widget/custom_text.dart';

class PasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PasswordController>(
      init: PasswordController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: CustomText(
              txt: "Create your Account",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            centerTitle: true,
            backgroundColor: Colors.white12,
            elevation: 0,
          ),
          body: FadeInDownBig(
            delay: Duration(microseconds: 500),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  CustomText(
                    txt: "Set a password",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 10),
                  CustomText(
                    txt:
                        "Please create a secure password including the following criteria below",
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    onChanged: (password) {
                      controller.onPasswordChanged(password);
                    },
                    obscureText: controller.isVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () => controller.visibilityPassword(),
                        icon: Icon(controller.isVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: controller.isPasswordEightCharacters
                                ? Colors.green
                                : Colors.transparent,
                            border: controller.isPasswordEightCharacters
                                ? Border.all(color: Colors.transparent)
                                : Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Contains at least 8 characters")
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: controller.hasPasswordOneNumber
                                ? Colors.green
                                : Colors.transparent,
                            border: controller.hasPasswordOneNumber
                                ? Border.all(color: Colors.transparent)
                                : Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Contains at least 1 number")
                    ],
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: CustomText(
                          txt: "CREATE ACCOUNT",
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black87,
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
