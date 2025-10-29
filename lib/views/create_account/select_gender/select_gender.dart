import 'package:dating_apps/global_widgets/custom_appbar.dart';
import 'package:dating_apps/global_widgets/custom_button.dart';
import 'package:dating_apps/utils/colors.dart';
import 'package:flutter/material.dart';

import 'custom_widgets/custom_widgets.dart';

class SelectGender extends StatelessWidget {
  const SelectGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(iconPath: 'assets/icons/Back.svg'),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.backgroundImage),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 140),
                // Title
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select Gender ',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                // Subtitle
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Please select your gender',
                    style: TextStyle(
                      color: AppColors.subtitleColor,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 17),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [const SizedBox(height: 20), GenderSelection()],
                ),
                const SizedBox(height: 40),

                // use below custom button
                CustomButton(
                  onTap: () {},
                  title: 'Continue',
                  fontSize: 16,
                  borderRadius: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
