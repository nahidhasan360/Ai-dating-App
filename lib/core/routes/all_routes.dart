import 'package:dating_apps/views/home_screen/home_screen.dart' hide HomeScreen;
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../views/auth/login_screen.dart';
import '../../views/onbording_screen/onboarding2.dart';
import '../../views/onbording_screen/onbording.dart';
import '../../views/welcome_screen/welcome_page.dart';
import '../../views/welcome_screen/welcome_screen.dart';
import '../../views/welcome_screen/welcome_screen2.dart';
import '../dependency_injection/dependency_injection.dart';

class AppRoutes {
  ///=========================== onboarding Part 1======================//
  static const String onboarding1 = "/Onboarding";
  static const String login = "/LoginScreen";
  static const String onboarding2 = "/Onboarding2";

  // ================== welcome screen =====================//
  static const String welcomeScreen = "/WelcomeScreen";
  static const String welcomeScreen2 = "/WelcomeScreen2";
  static const String welcome = "/WelcomePage";

  // ================ Home Screen ================================
  static const String homeScreen ="/HomeScreen" ;


   // bridge


  static List<GetPage> routes = [
  ///=========================== onboarding Part 1  =======================//
  GetPage(name: onboarding1, page: () => Onboarding()),
  GetPage(name: onboarding2, page: () => Onboarding2(),),


    // ====================== welcome screen =============================//
  GetPage(name:welcomeScreen, page:() => WelcomeScreen(),),
   GetPage(name:welcomeScreen2, page:() => WelcomeScreen2(),),
   GetPage(name:welcome, page:() => WelcomePage(),),

    //=========================== Login ==============================
    GetPage(name: login, page: () => LoginScreen()),


// ============================== Home Screen ================================
//   GetPage(name: homeScreen, page:() => HomeScreen(),
//     binding: HomeBinding(),
//   ),


  ];
}
