import 'package:get/get.dart';

class PasswordController extends GetxController {

  bool isVisible = true;
  bool isPasswordEightCharacters = false;
  bool hasPasswordOneNumber = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');

    isPasswordEightCharacters = false;
    if (password.length >= 8) isPasswordEightCharacters = true;

    hasPasswordOneNumber = false;
    if (numericRegex.hasMatch(password)) hasPasswordOneNumber = true;
  update();
  }

  visibilityPassword(){
    isVisible =!isVisible;
    update();
  }
}
