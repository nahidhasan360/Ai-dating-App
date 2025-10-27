import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/assets_manager.dart';
import '../../utils/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundImage),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            Expanded(
              flex: 2,
              child: Center(
                child: Image.asset(
                  ImageManager.welcomePage,
                  fit: BoxFit.cover,
                  height: 300.h,
                  width: 300.w,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),

            SizedBox(height: 30),


              Container(
                height: 20,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  gradient: AppColors.btnColor,
                  borderRadius: BorderRadius.circular(64),
                ),
                child: Row(
                  crossAxisAlignment:CrossAxisAlignment.center,
                   children: [
                     Image.asset(SvgManager.apple,width: 10,),
                     SizedBox(width: 30,),

                   Center(
                       child: Text(
                         'Login with Apple',
                         style: TextStyle(
                           color: AppColors.white,
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ),
                   ],
                )
              ),





            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
