import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:my_youtube/src/constants/imports.dart';
import 'package:my_youtube/src/features/authentication/controllers/onBoarding_controller.dart';
import 'package:my_youtube/src/features/authentication/models/model_onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            //enableSideReveal: true,
          ),
          Positioned(
            bottom: 80,
            child: OutlinedButton(
              onPressed: () => obController.animteToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Color(0xFF272727), shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 30,
              child: AnimatedSmoothIndicator(
                activeIndex: obController.currentPage.value,
                count: 3,
                effect: WormEffect(
                  activeDotColor: kDarkColor,
                  dotHeight: getDeviceHeight(5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.onBoardingModel,
  });

  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: onBoardingModel.bgColor,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(onBoardingModel.image),
            height: getDeviceHeight(400),
          ),
          // SizedBox(
          //   height: getDeviceHeight(50),
          // ),
          Column(
            children: [
              Text(
                onBoardingModel.title,
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                      fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: getDeviceHeight(10),
              ),
              Text(
                onBoardingModel.subTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF767676),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getDeviceHeight(50),
          ),
          Text(onBoardingModel.counterText),
          SizedBox(
            height: getDeviceHeight(20),
          ),
        ],
      ),
    );
  }
}
