import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../views/auth/Forget_Password/continue_screen/continue_screen.dart';
import '../../views/auth/Forget_Password/forget_otp/otp_screen.dart';
import '../../views/auth/Forget_Password/forget_password/forget_password_screen.dart';
import '../../views/auth/Forget_Password/set_new_password/set_new_password.dart';
import '../../views/auth/Forget_Password/success_screen/success_screen.dart';
import '../../views/auth/login-screen/confirm_screen/confirm_screen.dart';
import '../../views/auth/login-screen/login_screen.dart';
import '../../views/auth/login-screen/otp_screen/otp_screen.dart';
import '../../views/onbording_screen/onboarding2.dart';
import '../../views/onbording_screen/onbording.dart';
import '../../views/welcome_screen/welcome_page.dart';
import '../../views/welcome_screen/welcome_screen.dart';
import '../../views/welcome_screen/welcome_screen2.dart';

class AppRoutes {
  ///=========================== onboarding Part 1======================//
  static const String onboarding1 = "/Onboarding";
  static const String onboarding2 = "/Onboarding2";

  // ================== welcome screen =====================//
  static const String welcomeScreen = "/WelcomeScreen";
  static const String welcomeScreen2 = "/WelcomeScreen2";
  static const String welcome = "/WelcomePage";

  // ================ login Screen part ================================
  static const String login = "/LoginScreen";
  // ================ otp Screen ====================
  static const String otpScreen = "/OtpScreen";
  // ================ confirm Screen ================
  static const String confirmScreen = "/ConfirmScreen";

  // ================ ForgetPassword Screen ================================
  /// ======== forget otp Screen ====================
  static const String forgetPassOtp = "/ForgetPassOtp";
  static const String forgetPasswordScreen = "/ForgetPasswordScreen";
  // ================ continue Screen for forget_pass ======================
  static const String continueScreen = "/ContinueScreen";

  // ================ set new password ======================
  static const String setNewPassword = "/SetNewPassword";
  static const String successScreen = "/SuccessScreen";








  // bridge




  static List<GetPage> routes = [
    ///=========================== onboarding Part 1  =======================//
    GetPage(name: onboarding1, page: () => Onboarding()),
    GetPage(name: onboarding2, page: () => Onboarding2()),

    // ====================== welcome screen =============================
    GetPage(name: welcomeScreen, page: () => WelcomeScreen()),
    GetPage(name: welcomeScreen2, page: () => WelcomeScreen2()),
    GetPage(name: welcome, page: () => WelcomePage()),
    /// ===================================================================
    //=========================== Login ==============================
    GetPage(name: login, page: () => LoginScreen()),
    //================ otp screen ===============
    GetPage(name: otpScreen, page: () => OtpScreen()),
    GetPage(name: confirmScreen, page: () => ConfirmScreen()),

    /// ===================  forget password part ===========================
    GetPage(name: forgetPasswordScreen, page: () => ForgetPassword()),
    //=========================== forget otp screen ================ =========
    GetPage(name: forgetPassOtp, page: () => ForgetPassOtp()),
    GetPage(name: continueScreen, page: () => ContinueScreen()),
    GetPage(name: setNewPassword, page: () => SetNewPassword()),
    GetPage(name: successScreen, page: () => SuccessScreen()),




  ];
}
