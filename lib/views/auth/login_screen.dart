import 'package:dating_apps/utils/assets_manager.dart';
import 'package:dating_apps/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../controllers/auth_controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>(); // ✅ Added form key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100), // 🔹 এখানে height বাড়াও
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(left: 4, top:9),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                SvgManager.back,
                height: 52,
                width: 52,
              ),
            ),
          ),
        ),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
           gradient: AppColors.backgroundImage,
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(
                          SvgManager.back,
                          height: 92,
                          width: 92,
                        ),
                      ),
                    ),
                  ),


                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Login to HeartTalk',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                  ),
                       SizedBox(height: 7),
                      // Subtitle
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Please enter your email and password to login',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                       SizedBox(height: 40),


                  // Email Field
                  TextFormField(
                    controller: controller.emailController,
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!GetUtils.isEmail(value)) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'mark13@gmail.com',
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.white),
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: const Icon(Icons.email, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                        const BorderSide(color: Color(0xFFE85D75)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                        const BorderSide(color: Color(0xFFE85D75)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Password Field
                  Obx(() => TextFormField(
                    controller: controller.passwordController,
                    obscureText: controller.obscurePassword.value,
                    style: const TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.white),
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.obscurePassword.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: controller.togglePasswordVisibility,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                        const BorderSide(color: Color(0xFFE85D75)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                        const BorderSide(color: Color(0xFFE85D75)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
                  const SizedBox(height: 12),

                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed('/forgot-password');
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Color(0xFFE85D75)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Sign In Button
                  Obx(() => ElevatedButton(
                    onPressed: controller.isLoading.value
                        ? null
                        : () {
                      if (_formKey.currentState!.validate()) {
                        controller.login();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient:AppColors.btnColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        child: controller.isLoading.value
                            ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                            : const Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                   )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
