import 'package:get/get.dart';
import 'package:my_youtube/src/features/authentication/screens/onBoarding_screen/onboarding_screen.dart';

import '../../../constants/imports.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(
      OnBoardingScreen(),
    );
  }
}
