import 'package:dating_apps/utils/assets_manager.dart';
import 'package:dating_apps/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../views/create_account/account_controller/create_account_controller.dart';

class ProfileAvatar extends StatelessWidget {
  final controller = Get.find<AccountController>();

  ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final imageFile = controller.profileImage.value;

      return Stack(
        alignment: Alignment.center,
        children: [
          // ================  Profile Image Container
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: AppColors.btnColor,
            ),
            padding: const EdgeInsets.all(3),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageFile != null
                      ? FileImage(imageFile)
                      : const NetworkImage('https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&fm=jpg&q=60&w=3000')
                            as ImageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Camera Button
          Positioned(
            bottom: 4,
            right: 6,
            child: GestureDetector(
              onTap: controller.pickImage,
              child: Container(
                width: 34,
                height: 34,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  margin: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                 color: Colors.white
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      SvgManager.camera,
                      width: 18,
                      height: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
