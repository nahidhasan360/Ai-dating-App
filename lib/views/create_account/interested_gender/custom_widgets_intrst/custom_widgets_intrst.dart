import 'package:dating_apps/utils/assets_manager.dart';
import 'package:dating_apps/views/create_account/interested_gender/interested_gender_controller/interested_gender_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InterestedGenderSelection extends StatelessWidget {
  final controller = Get.put(InterestedGenderController());

  InterestedGenderSelection({super.key});

  final gradient = const LinearGradient(
    colors: [Color(0xFFFF5C8D), Color(0xFF6A00F4)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildGenderCard(
            imagePath: ImageManager.genderFemale,
            label: "Female",
            isSelected: controller.selectedGender.value == "Female",
            onTap: () => controller.selectGender("Female"),
          ),
          const SizedBox(height: 20),
          _buildGenderCard(
            imagePath: ImageManager.genderFemale2,
            label: "Male",
            isSelected: controller.selectedGender.value == "Male",
            onTap: () => controller.selectGender("Male"),
          ),
        ],
      ),
    );
  }

  Widget _buildGenderCard({
    required String imagePath,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          gradient: isSelected ? gradient : null,
          borderRadius: BorderRadius.circular(16),
          border: isSelected
              ? null
              : Border.all(color: Colors.white24, width: 1.2),
        ),
        child: Container(
          width: 125,
          height: 125,
          decoration: BoxDecoration(
            color: const Color(0xFF1E1124),
            borderRadius: BorderRadius.circular(14),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),


                if (isSelected)
                  Container(
                    color: Colors.black.withValues(alpha: 0.25),
                  ),


                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                      ),
                    ),
                    child: Text(
                      label,
                      style: TextStyle(
                        color: isSelected
                            ? const Color(0xFFFF5C8D)
                            : Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
