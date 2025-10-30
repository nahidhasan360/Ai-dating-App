import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../gender_controller/selected_Gender.dart';

class GenderSelection extends StatelessWidget {
  final controller = Get.put(GenderController());

  GenderSelection({super.key});

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
            icon: Icons.male,
            label: "Male",
            isSelected: controller.selectedGender.value == "Male",
            onTap: () => controller.selectGender("Male"),
          ),
          const SizedBox(height: 20),
          _buildGenderCard(
            icon: Icons.female,
            label: "Female",
            isSelected: controller.selectedGender.value == "Female",
            onTap: () => controller.selectGender("Female"),
          ),
          const SizedBox(height: 20),
          _buildGenderCard(
            icon: Icons.transgender,
            label: "I prefer not to say",
            isSelected: controller.selectedGender.value == "None",
            onTap: () => controller.selectGender("None"),
          ),
        ],
      ),
    );
  }

  Widget _buildGenderCard({
    required IconData icon,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isSelected ? const Color(0xFFFF5C8D) : Colors.white,
                size: 66,
              ),
              const SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isSelected ? const Color(0xFFFF5C8D) : Colors.white,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}
