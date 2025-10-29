import 'package:dating_apps/core/routes/all_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../global_widgets/custom_pin_code.dart';
import '../../../../utils/assets_manager.dart';
import '../../../../utils/colors.dart';
import 'otp_controller/otp-controller.dart';

class OtpScreen extends StatelessWidget {
  final controller = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: Container(
          color: Colors.transparent,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.only(left: 15, bottom: 70),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(SvgManager.back, height: 50, width: 50),
          ),
        ),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.backgroundImage),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Check your email",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "We sent a reset link to mark13@gmail.com\nEnter 6 digit code mentioned in the email",
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              const SizedBox(height: 40),

              CustomPinCode(controller: controller.otpController),

              const SizedBox(height: 40),

              // 🔘 Continue Button
              Obx(
                () => GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.confirmScreen);
                  },

                  // controller.isLoading.value
                  //     ? null
                  //     :
                  // controller.verifyOtp
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: AppColors.btnColor,
                    ),
                    alignment: Alignment.center,
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Continue",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Haven’t got the email yet? ",
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Resend email",
                        style: const TextStyle(
                          color: AppColors.spanTextColor,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            controller.resendOtp();
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
