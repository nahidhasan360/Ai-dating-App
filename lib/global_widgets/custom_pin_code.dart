import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../utils/colors.dart';

class CustomPinCode extends StatelessWidget {
  final TextEditingController controller;
  const CustomPinCode({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      controller: controller,
      cursorColor: AppColors.primary,
      enableActiveFill: true,
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(14),
        fieldHeight: 55,
        fieldWidth: 45,
        inactiveColor: AppColors.borderSide, // Border color (inactive)
        activeColor: Colors.pinkAccent, // Active border color
        selectedColor: AppColors.primary,
        inactiveFillColor: Colors.transparent,
        selectedFillColor: Colors.transparent,
        activeFillColor: Colors.transparent,
      ),
      boxShadows: [
        BoxShadow(
          color: AppColors.primary.withValues(alpha: 0.4),
          blurRadius: 6,
          spreadRadius: 1,
        ),
      ],
      onChanged: (value) {},
    );
  }
}
