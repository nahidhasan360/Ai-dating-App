import 'package:get/get.dart';
import '../models/home_user_model/home_user_model.dart';

class HomeController extends GetxController {
  var users = <UserModel>[
    UserModel(name: "Alexa", imageUrl: "assets/images/alexa.jpg"),
    UserModel(name: "Bella", imageUrl: "assets/images/bella.jpg"),
    UserModel(name: "Clara", imageUrl: "assets/images/clara.jpg"),
  ].obs;
  var selectedIndex = 0.obs;

  void changeTab(int index) => selectedIndex.value = index;

}
