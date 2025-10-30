import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AccountController extends GetxController {
  // final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final dobController = TextEditingController();


  final profileImage = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();

  // ================= Image picker =========================
  Future<void> pickImage() async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      profileImage.value = File(picked.path);
      uploadProfileImage();
    }
  }


  Future<void> uploadProfileImage() async {
    try {
      Get.snackbar("Uploading...", "Please wait...",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.black.withValues(alpha: 0.6),
          colorText: Colors.white);

      await Future.delayed(const Duration(seconds: 2));

      Get.snackbar("Success", "Profile picture uploaded successfully!",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white);
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white);
    }
  }

  void pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2001, 2, 23),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      dobController.text =
      "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}";
    }
  }
  //
  // void submit() {
  //   if (formKey.currentState?.validate() ?? false) {
  //
  //     Get.snackbar(
  //       "Success",
  //       "All fields are valid!",
  //       snackPosition: SnackPosition.BOTTOM,
  //       backgroundColor: Colors.green,
  //       colorText: Colors.white,
  //     );
  //   } else {
  //     Get.snackbar(
  //       "Error",
  //       "Please fill all fields correctly",
  //       snackPosition: SnackPosition.BOTTOM,
  //       backgroundColor: Colors.red,
  //       colorText: Colors.white,
  //     );
  //   }
  // }

}
