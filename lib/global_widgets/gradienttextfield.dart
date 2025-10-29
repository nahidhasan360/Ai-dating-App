






























// import 'package:flutter/material.dart';
//
// class GradientTextField extends StatelessWidget {
//   final String label;
//   final String hint;
//   final TextEditingController controller;
//   final Widget? suffixIcon;
//
//   const GradientTextField({
//     super.key,
//     required this.label,
//     required this.hint,
//     required this.controller,
//     this.suffixIcon,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 5), // spacing between fields
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [Color(0xFFFF5C8D), Color(0xFF6A00F4)],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(14),
//       ),
//       padding: const EdgeInsets.all(1.5), // thin gradient border
//       child: Container(
//         decoration: BoxDecoration(
//           color: const Color(0xFF1E1124),
//           borderRadius: BorderRadius.circular(14),
//         ),
//         child: TextField(
//           controller: controller,
//           style: const TextStyle(color: Colors.white, fontSize: 16),
//           cursorColor: Color(0xFFFF5C8D),
//           decoration: InputDecoration(
//             labelText: label,
//             labelStyle: const TextStyle(color: Color(0xFFDD88CF), fontSize: 14),
//
//             hintText: hint,
//             hintStyle: const TextStyle(color: Colors.white54),
//             border: InputBorder.none,
//             contentPadding: const EdgeInsets.symmetric(
//               horizontal: 18,
//               vertical: 14,
//             ), //
//
//             suffixIcon: suffixIcon != null
//                 ? Padding(
//                     padding: const EdgeInsets.only(right: 8),
//                     child: suffixIcon,
//                   )
//                 : null,
//           ),
//         ),
//       ),
//     );
//   }
// }
