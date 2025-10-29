import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetNewPasswordController extends GetxController {
  // Text Controllers
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Password visibility
  var obscurePassword = true.obs;

  // Loading state
  var isLoading = false.obs;

  // Toggle password visibility
  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  // Update Password function
  void updatePassword(GlobalKey<FormState> formKey) async {
    if (!formKey.currentState!.validate()) return;

    if (passwordController.text != confirmPasswordController.text) {
      Get.snackbar(
        'Error',
        'Passwords do not match',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    try {
      isLoading.value = true;

      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      isLoading.value = false;

      Get.snackbar(
        'Success',
        'Password updated successfully',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      // Navigate if needed
      // Get.offAllNamed(AppRoutes.login);
    } catch (e) {
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Something went wrong',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
