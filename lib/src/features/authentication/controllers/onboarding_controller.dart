import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:my_youtube/src/constants/imports.dart';

import '../models/model_onboarding.dart';
import '../screens/onBoarding_screen/onboarding_screen.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingPage(
      onBoardingModel: OnBoardingModel(
        bgColor: kBgColor,
        image: kOnboarding1,
        counterText: kOnBoardingCounter1,
        title: kOnBoardingTitle1,
        subTitle: kOnBoardingSubTitle1,
      ),
    ),
    OnboardingPage(
      onBoardingModel: OnBoardingModel(
        bgColor: kOnboardingPage2Color,
        image: kOnboarding2,
        counterText: kOnBoardingCounter2,
        title: kOnBoardingTitle2,
        subTitle: kOnBoardingSubTitle2,
      ),
    ),
    OnboardingPage(
      onBoardingModel: OnBoardingModel(
        bgColor: kPrimaryColor,
        image: kOnboarding3,
        counterText: kOnBoardingCounter3,
        title: kOnBoardingTitle3,
        subTitle: kOnBoardingSubTitle3,
      ),
    ),
  ];
  void onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip() => controller.jumpToPage(page: 2);
  animteToNextSlide() {
    int nextpage = controller.currentPage + 1;
    controller.animateToPage(page: nextpage);
  }
}
