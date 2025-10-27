import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';
import 'custom_widgets/custom_profile_card.dart';

class HomeScreen extends GetView<HomeController> {
   HomeScreen({super.key});
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A073E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Obx(() {
            // ensure controller.users is reactive (.obs)
            if (controller.users.isEmpty) {
              return const Center(
                child: Text(
                  "No users available",
                  style: TextStyle(color: Colors.white70),
                ),
              );
            }
            return GridView.builder(
              itemCount: controller.users.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.5,
              ),
              itemBuilder: (context, index) {
                final user = controller.users[index];
                return ProfileCard(
                  user: user,
                  onTap: () {
                    // Navigate to chat screen later
                  },
                );
              },
            );
          }),
        ),
      ),


      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFFF416C), Color(0xFFFF4B2B)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomIcon(Icons.home, 0),
            _bottomIcon(Icons.chat, 1),
            _bottomIcon(Icons.settings, 2),
          ],
        ),
      ),
    );
  }

  Widget _bottomIcon(IconData icon, int index) {
    return GestureDetector(
      onTap: () => controller.changeTab(index),
      child: Obx(() => Icon(
        icon,
        color: controller.selectedIndex.value == index
            ? Colors.red
            : Colors.white.withOpacity(0.5),
        size: 28,
      )),
    );
  }
}

