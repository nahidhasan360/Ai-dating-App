import 'package:dating_apps/utils/colors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OtpController extends GetxController {
  final otpController = TextEditingController();
  final isLoading = false.obs;


  void resendOtp() {
    if (!isClosed) {
      Get.snackbar(
        'Resend OTP',
        'A new verification code has been sent to your email.',
        snackPosition: SnackPosition.TOP,
        colorText: AppColors.white,
      );
    }
  }


  void verifyOtp() {
    final otp = otpController.text.trim();

    if (otp.length < 6) {
      if (!isClosed) {
        Get.snackbar(
          'Error',
          'Please enter the full 6-digit code',
          snackPosition: SnackPosition.TOP,
          colorText: AppColors.white,
        );
      }
      return;
    }

    isLoading.value = true;

    // Simulate API call safely
    Future.delayed(const Duration(seconds: 2), () {
      if (isClosed) return;
      isLoading.value = false;

      if (Get.isRegistered<OtpController>()) {
        Get.snackbar(
          'Success',
          'OTP Verified!',
          snackPosition: SnackPosition.BOTTOM,
          colorText: AppColors.white,
        );
      }
    });
  }

  @override
  void onClose() {
    otpController.dispose();
    super.onClose();
  }
}
