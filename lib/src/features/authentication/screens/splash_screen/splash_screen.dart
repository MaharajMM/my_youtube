import 'package:my_youtube/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../constants/imports.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  bool animate = false;
  @override
  // void initState() {
  //   startAnimation();
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final splashController = Get.put(FadeInAnimationController());
    splashController.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          KFadeInAnimation(
            durationInMS: 1500,
            animatePosition: KAnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftAfter: 90,
              leftBefore: -80,
            ),
            child: const Text(
              kAppTagLine,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          KFadeInAnimation(
            durationInMS: 1500,
            animatePosition: KAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 300,
            ),
            child: SizedBox(
              height: getDeviceHeight(250),
              child: const Image(
                image: AssetImage(
                  kSplashImage2,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          KFadeInAnimation(
            durationInMS: 1600,
            animatePosition: KAnimatePosition(
              bottomAfter: 100,
              bottomBefore: 0,
              rightBefore: kDefaultSize,
              rightAfter: kDefaultSize,
            ),
            child: Container(
              width: kSplashContainerSize,
              height: kSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
