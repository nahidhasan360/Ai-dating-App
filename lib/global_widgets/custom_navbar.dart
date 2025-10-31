import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  var currentIndex = 0.obs;

  void changeTab(int index) {
    currentIndex.value = index;
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final NavController controller = Get.put(NavController());

  CustomBottomNavBar({super.key});

  final List<IconData> icons = const [
    Icons.home_rounded,
    Icons.chat_bubble_outline_rounded,
    Icons.add, // center button
    Icons.workspace_premium_outlined,
    Icons.settings_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFFF5C8D), Color(0xFF6A00F4)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(icons.length, (index) {
            // Center add button
            if (index == 2) {
              return GestureDetector(
                onTap: () => controller.changeTab(index),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Color(0xFF6A00F4),
                    size: 28,
                  ),
                ),
              );
            }

            bool isActive = controller.currentIndex.value == index;

            return GestureDetector(
              onTap: () => controller.changeTab(index),
              child: Icon(
                icons[index],
                color: isActive ? Colors.white : Colors.white70,
                size: isActive ? 28 : 24,
              ),
            );
          }),
        ),
      );
    });
  }
}
