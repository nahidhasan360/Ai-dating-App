import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // Text Controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Password visibility
  var obscurePassword = true.obs;

  // Loading state
  var isLoading = false.obs;

  // Toggle password visibility
  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  // Login function
  void login() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields',
          backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    try {
      isLoading.value = true;

      // Simulate API call
      await Future.delayed(Duration(seconds: 2));

      isLoading.value = false;

      // Success
      Get.snackbar('Success', 'Login successful',
          backgroundColor: Colors.green, colorText: Colors.white);
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Error', 'Login failed',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
