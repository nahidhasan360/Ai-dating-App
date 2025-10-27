import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../global_widgets/gradient_text.dart';
import '../../utils/assets_manager.dart';
import '../../utils/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.backgroundImage),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 80.h),

                  // ==========================  Image Section ================
                  Center(
                    child: Image.asset(
                      ImageManager.welcomePage,
                      fit: BoxFit.contain,
                      height: 290.h,
                      width: 290.w,

                    ),
                  ),

                  SizedBox(height: 160.h),

                  // ====================== Apple Button =====================
                  Container(
                    height: 55.h,
                    width: width * 0.85,
                    margin: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.r),
                      gradient: AppColors.btnColor,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Centered Text
                        Text(
                          'Login with Apple',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // ======================  Icon at left ===============
                        Positioned(
                          left: 9.w,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: SvgPicture.asset(
                              SvgManager.apple,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),



                  // ======================= Gmail Button =====================
                  GestureDetector(
                    onTap: () {
                      print(' Gmail Clicked');

                    },
                    child: Container(
                      height: 55.h,
                      width: width * 0.85,
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      decoration: BoxDecoration(
                        color: const Color(0xFF452741),
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Centered Gradient Text
                          GradientText(
                            'Login with Email',
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            gradient: AppColors.btnColor,
                          ),

                          // Icon at left
                          Positioned(
                            left: 9.w,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: SvgPicture.asset(
                                SvgManager.gmail,
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 8.h),

                  // ======================== Create Account Text =============
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'New to Cupid AI? ',
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14.sp,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Account Create');
                        },
                        child: Text(
                          'Create an account',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFFCE51A6),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
