import 'package:dating_apps/core/routes/all_routes.dart';
import 'package:dating_apps/utils/assets_manager.dart';
import 'package:dating_apps/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global_widgets/custom_appbar.dart';
import '../../global_widgets/profile_avator.dart';
import 'account_controller/create_account_controller.dart';

class CreateAccount extends StatelessWidget {
  final controller = Get.put(AccountController());

  CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(iconPath: SvgManager.back),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.backgroundImage),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 140),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Title
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create an account',
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
                    'Please add your profile details here',
                    style: TextStyle(color: AppColors.subtitleColor, fontSize: 14),
                  ),
                ),
                const SizedBox(height: 30),

                // Profile Avatar
                ProfileAvatar(),
                const SizedBox(height: 30),

                // Name
                TextFormField(
                  controller: controller.nameController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.borderSide),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.borderSide),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Email
                TextFormField(
                  controller: controller.emailController,
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintStyle: const TextStyle(color: Colors.grey),
                    suffixIcon: const Icon(Icons.email, color: Colors.grey, size: 17),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.borderSide),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.borderSide),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Date of Birth
                TextFormField(
                  controller: controller.dobController,
                  style: const TextStyle(color: Colors.white),
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Date of Birth',
                    hintText: 'DD/MM/YYYY',
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintStyle: const TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today, color: Colors.grey, size: 17),
                      onPressed: () => controller.pickDate(context),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.borderSide),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.borderSide),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Continue Button
                ElevatedButton(
                  onPressed: () {
                    // Direct navigation without validation
                    Get.toNamed(AppRoutes.selectGender);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: AppColors.btnColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





















// import 'package:dating_apps/core/routes/all_routes.dart';
// import 'package:dating_apps/utils/assets_manager.dart';
// import 'package:dating_apps/utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../global_widgets/custom_appbar.dart';
// import '../../global_widgets/profile_avator.dart';
// import 'account_controller/create_account_controller.dart';
//
// class CreateAccount extends StatelessWidget {
//   CreateAccount({super.key});
//   final controller = Get.put(AccountController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: CustomAppBar( iconPath: SvgManager.back,),
//
//
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(gradient: AppColors.backgroundImage),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 140),
//
//
//             child: Form(
//               key: controller.formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   // Title
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'Create account',
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 7),
//
//                   // Subtitle
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'Please add your profile details here',
//                       style: TextStyle(color: AppColors.subtitleColor, fontSize: 14),
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//
//                   // Profile Avatar
//                   ProfileAvatar(),
//                   const SizedBox(height: 30),
//
//                   // Name
//                   TextFormField(
//                     controller: controller.nameController,
//                     style: const TextStyle(color: Colors.white),
//                     // validator: (value) {
//                     //   if (value == null || value.isEmpty) {
//                     //     return 'Please enter your name';
//                     //   }
//                     //   return null;
//                     // },
//                     decoration: InputDecoration(
//                       labelText: 'Name',
//                       hintText: 'Enter your name',
//                       labelStyle: const TextStyle(color: Colors.grey),
//                       hintStyle: const TextStyle(color: Colors.grey),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: const BorderSide(color: AppColors.borderSide),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: const BorderSide(color: AppColors.borderSide),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: const BorderSide(color: Colors.white),
//                       ),
//                       errorStyle: const TextStyle(color: Colors.red),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//
//                   // Email
//                   TextFormField(
//                     controller: controller.emailController,
//                     style: const TextStyle(color: Colors.white),
//                     keyboardType: TextInputType.emailAddress,
//                     // validator: (value) {
//                     //   if (value == null || value.isEmpty) {
//                     //     return 'Please enter your email';
//                     //   } else if (!GetUtils.isEmail(value)) {
//                     //     return 'Enter a valid email';
//                     //   }
//                     //   return null;
//                     // },
//                     decoration: InputDecoration(
//                       labelText: 'Email',
//                       hintText: 'Enter your email',
//                       labelStyle: const TextStyle(color: Colors.grey),
//                       hintStyle: const TextStyle(color: Colors.grey),
//                       suffixIcon: const Icon(Icons.email, color: Colors.grey, size: 17),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: const BorderSide(color: AppColors.borderSide),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: const BorderSide(color: AppColors.borderSide),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: const BorderSide(color: Colors.white),
//                       ),
//                       errorStyle: const TextStyle(color: Colors.red),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//
//                   // Date of Birth
//                   TextFormField(
//                     controller: controller.dobController,
//                     style: const TextStyle(color: Colors.white),
//                     readOnly: true,
//                     // validator: (value) {
//                     //   if (value == null || value.isEmpty) {
//                     //     return 'Please enter your date of birth';
//                     //   }
//                     //   return null;
//                     // },
//                     decoration: InputDecoration(
//                       labelText: 'Date of Birth',
//                       hintText: 'DD/MM/YYYY',
//                       labelStyle: const TextStyle(color: Colors.grey),
//                       hintStyle: const TextStyle(color: Colors.grey),
//                       suffixIcon: IconButton(
//                         icon: const Icon(Icons.calendar_today, color: Colors.grey, size: 17),
//                         onPressed: () => controller.pickDate(context),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: const BorderSide(color: AppColors.borderSide),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: const BorderSide(color: AppColors.borderSide),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                         borderSide: const BorderSide(color: Colors.white),
//                       ),
//                       errorStyle: const TextStyle(color: Colors.red),
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//
//                   // Continue Button
//                   ElevatedButton(
//                     onPressed: () {
//
//                       Get.toNamed(AppRoutes.selectGender);
//
//                     },
//
//                     // if (controller.formKey.currentState?.validate() ?? false) {
//                     //   controller.submit();
//                     // }
//
//                     style: ElevatedButton.styleFrom(
//                       padding: EdgeInsets.zero,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     child: Ink(
//                       decoration: BoxDecoration(
//                         gradient: AppColors.btnColor,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Container(
//                         alignment: Alignment.center,
//                         height: 50,
//                         child: const Text(
//                           'Continue',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
