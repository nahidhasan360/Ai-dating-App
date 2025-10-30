import 'package:get/get.dart';

class InterestedGenderController extends GetxController {
  var selectedGender = ''.obs;

  void selectGender(String gender) {
    selectedGender.value = gender;
  }
}
