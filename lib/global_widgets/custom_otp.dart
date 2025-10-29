// import 'package:flutter/material.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import '../utils/colors.dart';
//
// class CustomPinCode extends StatelessWidget {
//   const CustomPinCode({super.key, required this.controller});
//
//   final TextEditingController controller;
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.sizeOf(context);
//     return Padding(
//       padding: const EdgeInsets.only(left: 30, right: 30),
//       child: PinCodeTextField(
//         keyboardType: TextInputType.number,
//         appContext: context,
//         length: 4,
//         enableActiveFill: true,
//         animationType: AnimationType.fade,
//         animationDuration: Duration(milliseconds: 300),
//         controller: controller,
//         pinTheme: PinTheme(
//           shape: PinCodeFieldShape.box,
//           borderRadius: BorderRadius.circular(16),
//           fieldHeight: 65,
//           fieldWidth: size.width * 0.15,
//           inactiveColor: AppColors.primary,
//           activeColor: AppColors.white, // active color
//           activeFillColor: AppColors.white,
//           inactiveFillColor: AppColors.white,
//           selectedFillColor: AppColors.white, // selected color
//           disabledColor: AppColors.white,
//           selectedColor: AppColors.primary,
//         ),
//       ),
//     );
//   }
// }
