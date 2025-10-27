import 'package:flutter/material.dart';
class AppColors {

  // ====================  Gradient Color fo background =====================//
  static const LinearGradient backgroundImage = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF481937),
      Color(0xFF140c0e),
      Color(0xFF3e223c),
    ],
    stops: [0.1, 0.5, 1.0],
  );
  // ==================== Gradient Color is end =====================//


  // button color
  // ==================== Gradient Color  For Button =====================//
  static const LinearGradient btnColor = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFFB665B),
      Color(0xFFCE51A6),
      Color(0xFF8951D5),
    ],
    stops: [0.1, 0.5, 1.0],
  );

  // btn color rgb in end

  static const Color primary = Color(0x1affffff);
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color boxColor = Color(0xff4a3548);
  static const Color systemStatus =  Color(0xFF5C2552);







}